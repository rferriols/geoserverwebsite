<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<StyledLayerDescriptor version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <Name>default_line</Name>
    <UserStyle>
      <Name>default_line</Name>
      <Title>default_line</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>1 lane</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>lanes</PropertyName>
              <Literal>1</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">14</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">8</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>2 lanes</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>lanes</PropertyName>
              <Literal>2</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">24</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">16</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>3 lanes</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>lanes</PropertyName>
              <Literal>3</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">32</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">24</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>2.7</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>11.3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>4 lanes</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>lanes</ogc:PropertyName>
              <ogc:Literal>4</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>4000</MaxScaleDenominator>

          <!-- Outer outline (W=40 @ c=7) -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">40</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>

          <!-- Pavement (W=32 @ c=7) -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">32</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>

          <!-- Lane separators centered across W=40: offsets -3, 7, 17 -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>-3</PerpendicularOffset>
          </LineSymbolizer>

          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>

          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>17</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>5 lanes</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>lanes</ogc:PropertyName>
              <ogc:Literal>5</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>4000</MaxScaleDenominator>

          <!-- Outline (W=48 @ c=7) -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">48</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>

          <!-- Pavement (W=38 @ c=7) -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">38</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>

          <!-- Lane separators centered within W=38 (c=7): offsets -4.4, 3.2, 10.8, 18.4 -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>-4.4</PerpendicularOffset>
          </LineSymbolizer>

          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>3.2</PerpendicularOffset>
          </LineSymbolizer>

          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>10.8</PerpendicularOffset>
          </LineSymbolizer>

          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#FFDF57</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
              <CssParameter name="stroke-dasharray">8 8</CssParameter>
            </Stroke>
            <PerpendicularOffset>18.4</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>

        <Rule>
          <MinScaleDenominator>4000</MinScaleDenominator>
          <MaxScaleDenominator>8000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">24</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">20</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>7</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>8000</MinScaleDenominator>
          <MaxScaleDenominator>16000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">18</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>6</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">14</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>6</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>16000</MinScaleDenominator>
          <MaxScaleDenominator>32000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">12</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>5</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">8</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>5</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>32000</MinScaleDenominator>
          <MaxScaleDenominator>64000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">6</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>64000</MinScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f4ca16</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>2</PerpendicularOffset>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#454545</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">butt</CssParameter>
            </Stroke>
            <PerpendicularOffset>2</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>