# generate_sld_rules.py — writes rule fragments to stdout (or file)
lanes = [1,2,3,4,5]
scale_ranges = [
    (4000, 6000),  # zoom group A
    (6000, 8000),  # zoom group B
]

# per-lane base widths (example)
base_yellow = {1:14, 2:24, 3:32, 4:40, 5:48}
base_gray   = {1:8,  2:16, 3:24, 4:32, 5:38}

# scaling multipliers per zoom group (tweak as needed)
group_multipliers = [
    ('4000-6000', 1.05, 1.10),  # slightly thicker for closer zoom
    ('6000-8000', 0.85, 0.90),  # thinner for farther zoom
]

def fmt_rule(lane, min_scale, max_scale, ywidth, gwidth, offset):
    return f'''        <Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>lanes</ogc:PropertyName>
              <ogc:Literal>{lane}</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>{min_scale}</MinScaleDenominator>
          <MaxScaleDenominator>{max_scale}</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">{ywidth:.1f}</CssParameter>
            </Stroke>
            <PerpendicularOffset>{offset}</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">{gwidth:.1f}</CssParameter>
            </Stroke>
            <PerpendicularOffset>{offset}</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
'''

def main():
    offset_by_lane = {1:7,2:7,3:7,4:7,5:7}  # tweak per lane if needed
    out = []
    for (min_s, max_s), (gname, ymul, gmul) in zip(scale_ranges, group_multipliers):
        for lane in lanes:
            y = base_yellow[lane] * ymul
            g = base_gray[lane]   * gmul
            off = offset_by_lane.get(lane, 7)
            out.append(fmt_rule(lane, min_s, max_s, y, g, off))
    print('\n'.join(out))

if __name__ == '__main__':
    main()