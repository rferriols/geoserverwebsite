<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">

  <NamedLayer>
    <Name>default_line</Name>
    <UserStyle>
      <Title>Tunnel Attribute Styles</Title>
      <FeatureTypeStyle>

        <!-- CALLAHAN TUNNEL -->
        <Rule>
          <Name>Callahan Tunnel</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Callahan Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>

          <!-- Outline -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">12</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>

          <!-- Pavement -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#6582F7</CssParameter>
              <CssParameter name="stroke-width">10</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>

		  <!-- Lane markings -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f8ffab</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-dasharray">2 7</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
          
		  <!-- Lane name -->
          <TextSymbolizer>
             <Label><ogc:PropertyName>name</ogc:PropertyName></Label>
             <Font>
			  <CssParameter name="font-family">Arial</CssParameter>
			  <CssParameter name="font-size">14</CssParameter>
			  <CssParameter name="font-weight">bold</CssParameter>
             </Font>
             <LabelPlacement>
               <LinePlacement>
                <PerpendicularOffset>-16</PerpendicularOffset>
               </LinePlacement>
             </LabelPlacement>
             <Fill>
               <CssParameter name="fill">#333333</CssParameter>
             </Fill>
          </TextSymbolizer>
        </Rule>

        <!-- CALLAHAN TUNNEL: Zoom Level 1 (Far) -->
        <Rule>
          <Name>Callahan Tunnel - Far</Name>
          <MinScaleDenominator>100000</MinScaleDenominator>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Callahan Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">6</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>

        <!-- CALLAHAN TUNNEL: Zoom Level 2 (Medium) -->
        <Rule>
          <Name>Callahan Tunnel - Medium</Name>
          <MinScaleDenominator>25000</MinScaleDenominator>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Callahan Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">10</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>

        <!-- CALLAHAN TUNNEL: Zoom Level 3 (Near) -->
        <Rule>
          <Name>Callahan Tunnel - Near</Name>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Callahan Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">12</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>

        <!-- SUMNER TUNNEL -->
        <Rule>
          <Name>Sumner Tunnel</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Sumner Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>

          <!-- Outline -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">12</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>

          <!-- Pavement -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#9CAFF7</CssParameter>
              <CssParameter name="stroke-width">10</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>

		  <!-- Lane markings -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f8ffab</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-dasharray">2 7</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
		  
		  <!-- Lane name -->
          <TextSymbolizer>
             <Label><ogc:PropertyName>name</ogc:PropertyName></Label>
             <Font>
			  <CssParameter name="font-family">Arial</CssParameter>
			  <CssParameter name="font-size">14</CssParameter>
			  <CssParameter name="font-weight">bold</CssParameter>
             </Font>
             <LabelPlacement>
               <LinePlacement>
                <PerpendicularOffset>16</PerpendicularOffset>
               </LinePlacement>
             </LabelPlacement>
             <Fill>
               <CssParameter name="fill">#333333</CssParameter>
             </Fill>
          </TextSymbolizer>
        </Rule>

        <!-- SUMNER TUNNEL: Zoom Level 1 (Far) -->
        <Rule>
          <Name>Sumner Tunnel - Far</Name>
          <MinScaleDenominator>100000</MinScaleDenominator>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Sumner Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">6</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>

        <!-- SUMNER TUNNEL: Zoom Level 2 (Medium) -->
        <Rule>
          <Name>Sumner Tunnel - Medium</Name>
          <MinScaleDenominator>25000</MinScaleDenominator>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Sumner Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">10</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>

        <!-- SUMNER TUNNEL: Zoom Level 3 (Near) -->
        <Rule>
          <Name>Sumner Tunnel - Near</Name>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>name</ogc:PropertyName>
              <ogc:Literal>Sumner Tunnel</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">12</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>

        <!-- Default style -->
        <Rule>
          <ElseFilter/>

          <!-- Outline -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000</CssParameter>
              <CssParameter name="stroke-width">8</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>

          <!-- Pavement -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#757575</CssParameter>
              <CssParameter name="stroke-width">6</CssParameter>
              <CssParameter name="stroke-linecap">flat</CssParameter>
              <CssParameter name="stroke-linejoin">flat</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>

		  <!-- Lane markings -->
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#f8ffab</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-dasharray">2 7</CssParameter>
            </Stroke>
            <PerpendicularOffset>3</PerpendicularOffset>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
