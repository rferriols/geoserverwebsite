<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<StyledLayerDescriptor
	xmlns="http://www.opengis.net/sld"
	xmlns:ogc="http://www.opengis.net/ogc"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:se="http://www.opengis.net/se" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd">
	<NamedLayer>
		<Name>default_line</Name>
		<UserStyle>
			<Name>default_line</Name>
			<Title>default_line</Title>
			<FeatureTypeStyle>
				<!-- ================================================= -->
				<!-- TUNNELS: Base Rendering (Yellow + Grey + Arrow) -->
				<!-- ================================================= -->

				<!-- Zoom < 4000 -->
				<Rule>
					<Name>Tunnel Base Zoom 4000</Name>
					<Description>
						<Title>Tunnel Base (High Zoom)</Title>
						<Abstract>Renders tunnel casing (yellow) and pavement (grey) for zoom levels less than 1:4000.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>4000</MaxScaleDenominator>
					
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">
								<!-- Stroke width based on lane count: 1->22, 2->29, 3->39.5, 4->55.3, 5->68 -->
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>22</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>29</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>39.5</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>55.3</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>68</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>8.05</PerpendicularOffset>
					</LineSymbolizer>
					
					<!-- Grey Pavement -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#474747</CssParameter>
							<CssParameter name="stroke-width">
								<!-- Pavement width based on lane count: 1->14, 2->21, 3->31.5, 4->47.3, 5->60 -->
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>14</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>21</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>31.5</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>47.3</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>60</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>8.05</PerpendicularOffset>
					</LineSymbolizer>

					<!-- Directional Arrow -->
					
					<LineSymbolizer>
						<Stroke>
							<GraphicStroke>
								<Graphic>
									<ExternalGraphic>
										<OnlineResource xlink:type="simple" xlink:href="dirarrow90.svg"/>
										<Format>image/svg+xml</Format>
									</ExternalGraphic>
									<Size>12</Size>
								</Graphic>
							</GraphicStroke>
						</Stroke>
						<PerpendicularOffset>8.05</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- Zoom 4000 - 8000 -->
				<Rule>
					<Name>Tunnel Base Zoom 4000-8000</Name>
					<Description>
						<Title>Tunnel Base (Zoom 4k-8k)</Title>
						<Abstract>Renders tunnel casing and pavement for zoom levels 1:4000 to 1:8000.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MinScaleDenominator>4000</MinScaleDenominator>
					<MaxScaleDenominator>8000</MaxScaleDenominator>
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">
								<!-- Casing width scaling for zoom 4k-8k -->
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>14</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>24</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>36.8</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>40</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>48</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<!-- Offset to align with center based on lanes -->
							<ogc:Function name="Recode">
								<ogc:PropertyName>lanes</ogc:PropertyName>
								<ogc:Literal>1</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>2</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>3</ogc:Literal><ogc:Literal>8.05</ogc:Literal>
								<ogc:Literal>4</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>5</ogc:Literal><ogc:Literal>7</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
					
					<!-- Grey Pavement -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#474747</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>8</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>16</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>27.6</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>32</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>38</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Recode">
								<ogc:PropertyName>lanes</ogc:PropertyName>
								<ogc:Literal>1</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>2</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>3</ogc:Literal><ogc:Literal>8.05</ogc:Literal>
								<ogc:Literal>4</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>5</ogc:Literal><ogc:Literal>7</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>

					<!-- Directional Arrow -->
					<LineSymbolizer>
						<Stroke>
							<GraphicStroke>
								<Graphic>
									<ExternalGraphic>
										<OnlineResource xlink:type="simple" xlink:href="dirarrow90.svg"/>
										<Format>image/svg+xml</Format>
									</ExternalGraphic>
									<Size>10</Size>
								</Graphic>
							</GraphicStroke>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Recode">
								<ogc:PropertyName>lanes</ogc:PropertyName>
								<ogc:Literal>1</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>2</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>3</ogc:Literal><ogc:Literal>8.05</ogc:Literal>
								<ogc:Literal>4</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>5</ogc:Literal><ogc:Literal>7</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- Zoom 8000 - 16000 -->
				<Rule>
					<Name>Tunnel Base Zoom 8000-16000</Name>
					<Description>
						<Title>Tunnel Base (Zoom 8k-16k)</Title>
						<Abstract>Renders tunnel casing and pavement for zoom levels 1:8000 to 1:16000.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MinScaleDenominator>8000</MinScaleDenominator>
					<MaxScaleDenominator>16000</MaxScaleDenominator>
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>10.5</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>18</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>24</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>30</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>36</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>5.25</PerpendicularOffset>
					</LineSymbolizer>
					
					<!-- Grey Pavement -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#474747</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>6</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>12</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>18</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>24</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>28.5</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>5.25</PerpendicularOffset>
					</LineSymbolizer>

					<!-- Directional Arrow -->
					<LineSymbolizer>
						<Stroke>
							<GraphicStroke>
								<Graphic>
									<ExternalGraphic>
										<OnlineResource xlink:type="simple" xlink:href="dirarrow90.svg"/>
										<Format>image/svg+xml</Format>
									</ExternalGraphic>
									<Size>8</Size>
								</Graphic>
							</GraphicStroke>
						</Stroke>
						<PerpendicularOffset>5.25</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- Zoom 16000 - 32000 -->
				<Rule>
					<Name>Tunnel Base Zoom 16000-32000</Name>
					<Description>
						<Title>Tunnel Base (Zoom 16k-32k)</Title>
						<Abstract>Renders tunnel casing and pavement for zoom levels 1:16000 to 1:32000.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MinScaleDenominator>16000</MinScaleDenominator>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>7</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>12</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>16</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>20</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>24</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>3.5</PerpendicularOffset>
					</LineSymbolizer>
					
					<!-- Grey Pavement -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#474747</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Recode">
									<ogc:PropertyName>lanes</ogc:PropertyName>
									<ogc:Literal>1</ogc:Literal><ogc:Literal>4</ogc:Literal>
									<ogc:Literal>2</ogc:Literal><ogc:Literal>8</ogc:Literal>
									<ogc:Literal>3</ogc:Literal><ogc:Literal>12</ogc:Literal>
									<ogc:Literal>4</ogc:Literal><ogc:Literal>16</ogc:Literal>
									<ogc:Literal>5</ogc:Literal><ogc:Literal>19</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>3.5</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- ================================================= -->
				<!-- TUNNELS: Lane Markings (Dashed Lines)             -->
				<!-- ================================================= -->

				<!-- Lane 2 Markings -->
				<Rule>
					<Name>Tunnel Lane 2 Markings</Name>
					<Description>
						<Title>Lane 2 Markings</Title>
						<Abstract>Dashed lines for 2-lane tunnels.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>lanes</ogc:PropertyName><ogc:Literal>2</ogc:Literal></ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>tunnel</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
					<!-- Dashed Line -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>8.05</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>5.25</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>3.5</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- Lane 3 Markings -->
				<Rule>
					<Name>Tunnel Lane 3 Markings</Name>
					<Description>
						<Title>Lane 3 Markings</Title>
						<Abstract>Dashed lines for 3-lane tunnels.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>lanes</ogc:PropertyName><ogc:Literal>3</ogc:Literal></ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>tunnel</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
					<!-- Line 1 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>2.7</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>3.105</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>2.025</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>1.35</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Line 2 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>11.3</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>12.995</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>8.475</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>5.65</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- Lane 4 Markings -->
				<Rule>
					<Name>Tunnel Lane 4 Markings</Name>
					<Description>
						<Title>Lane 4 Markings</Title>
						<Abstract>Dashed lines for 4-lane tunnels.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>lanes</ogc:PropertyName><ogc:Literal>4</ogc:Literal></ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>tunnel</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
					<!-- Line 1 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>-3.45</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>-3</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>-2.25</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>-1.5</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Line 2 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>8.05</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>7</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>5.25</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>3.5</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Line 3 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>19.55</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>17</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>12.75</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>8.5</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- Lane 5 Markings -->
				<Rule>
					<Name>Tunnel Lane 5 Markings</Name>
					<Description>
						<Title>Lane 5 Markings</Title>
						<Abstract>Dashed lines for 5-lane tunnels.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>lanes</ogc:PropertyName><ogc:Literal>5</ogc:Literal></ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo><ogc:PropertyName>tunnel</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
					<!-- Line 1 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>-5.06</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>-4.4</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>-3.3</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>-2.2</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Line 2 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>3.68</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>3.2</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>2.4</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>1.6</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Line 3 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>12.42</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>10.8</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>8.1</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>5.4</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Line 4 -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFFFA8</CssParameter>
							<CssParameter name="stroke-width">
								<ogc:Function name="Categorize">
									<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
									<ogc:Literal>2.3</ogc:Literal>
									<ogc:Literal>4000</ogc:Literal><ogc:Literal>2</ogc:Literal>
									<ogc:Literal>8000</ogc:Literal><ogc:Literal>1.5</ogc:Literal>
									<ogc:Literal>16000</ogc:Literal><ogc:Literal>1</ogc:Literal>
								</ogc:Function>
							</CssParameter>
							<CssParameter name="stroke-dasharray">8 8</CssParameter>
							<CssParameter name="opacity">.4</CssParameter>
						</Stroke>
						<PerpendicularOffset>
							<ogc:Function name="Categorize">
								<ogc:Function name="env"><ogc:Literal>wms_scale_denominator</ogc:Literal></ogc:Function>
								<ogc:Literal>21.1</ogc:Literal>
								<ogc:Literal>4000</ogc:Literal><ogc:Literal>18.4</ogc:Literal>
								<ogc:Literal>8000</ogc:Literal><ogc:Literal>13.8</ogc:Literal>
								<ogc:Literal>16000</ogc:Literal><ogc:Literal>9.2</ogc:Literal>
							</ogc:Function>
						</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>

				<!-- ================================================= -->
				<!-- SURFACE ROADS (Non-Tunnels)                       -->
				<!-- ================================================= -->

				<Rule>
					<Name>All lanes Zoom 32000-64000</Name>
					<Description>
						<Title>Surface Roads (Zoom 32k-64k)</Title>
						<Abstract>Simplified rendering for surface roads at low zoom.</Abstract>
					</Description>
					<MinScaleDenominator>32000</MinScaleDenominator>
					<MaxScaleDenominator>64000</MaxScaleDenominator>
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">4</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>3</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Grey Pavement -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#474747</CssParameter>
							<CssParameter name="stroke-width">2</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>3</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>All lanes Zoom 64000</Name>
					<Description>
						<Title>Surface Roads (Zoom > 64k)</Title>
						<Abstract>Very simplified rendering for surface roads at very low zoom.</Abstract>
					</Description>
					<MinScaleDenominator>64000</MinScaleDenominator>
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">2</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>2</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Grey Pavement -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#474747</CssParameter>
							<CssParameter name="stroke-width">1</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>2</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>
				
				<!-- Surface Rules for Zoom < 32000 -->
				<Rule>
					<Name>Lane 1-5, non tunnel zoom 4000 (tunnel?yes)</Name>
					<Description>
						<Title>Surface Roads (High Zoom)</Title>
						<Abstract>Detailed rendering for surface roads (non-tunnels) at high zoom.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsBetween>
								<ogc:PropertyName>lanes</ogc:PropertyName>
								<ogc:LowerBoundary><ogc:Literal>1</ogc:Literal></ogc:LowerBoundary>
								<ogc:UpperBoundary><ogc:Literal>5</ogc:Literal></ogc:UpperBoundary>
							</ogc:PropertyIsBetween>
							<ogc:PropertyIsNotEqualTo>
								<ogc:PropertyName>tunnel</ogc:PropertyName>
								<ogc:Literal>yes</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MaxScaleDenominator>4000</MaxScaleDenominator>
					<!-- casing -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
							<CssParameter name="stroke-width">22</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>8.05</PerpendicularOffset>
					</LineSymbolizer>
					<!-- pavement -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
							<CssParameter name="stroke-width">18</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>8.05</PerpendicularOffset>
					</LineSymbolizer>
					<!-- arrow overlay -->
					
					<LineSymbolizer>
						<Stroke>
							<GraphicStroke>
								<Graphic>
									<ExternalGraphic>
										<OnlineResource xlink:type="simple" xlink:href="dirarrow90.svg"/>
										<Format>image/svg+xml</Format>
									</ExternalGraphic>
									<Size>12</Size>
								</Graphic>
							</GraphicStroke>
						</Stroke>
						<PerpendicularOffset>8.05</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>Lane 1-5, non tunnel zoom 4000-8000</Name>
					<Description>
						<Title>Surface Roads (Zoom 4k-8k)</Title>
						<Abstract>Rendering for surface roads at zoom 1:4000 to 1:8000.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsBetween>
								<ogc:PropertyName>lanes</ogc:PropertyName>
								<ogc:LowerBoundary><ogc:Literal>1</ogc:Literal></ogc:LowerBoundary>
								<ogc:UpperBoundary><ogc:Literal>5</ogc:Literal></ogc:UpperBoundary>
							</ogc:PropertyIsBetween>
							<ogc:PropertyIsNotEqualTo>
								<ogc:PropertyName>tunnel</ogc:PropertyName>
								<ogc:Literal>yes</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MinScaleDenominator>4000</MinScaleDenominator>
					<MaxScaleDenominator>8000</MaxScaleDenominator>
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
							<CssParameter name="stroke-width">14</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>7</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Grey Pavement -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
							<CssParameter name="stroke-width">10</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>7</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Directional Arrow -->
					
					<LineSymbolizer>
						<Stroke>
							<GraphicStroke>
								<Graphic>
									<ExternalGraphic>
										<OnlineResource xlink:type="simple" xlink:href="dirarrow90.svg"/>
										<Format>image/svg+xml</Format>
									</ExternalGraphic>
									<Size>10</Size>
								</Graphic>
							</GraphicStroke>
						</Stroke>
						<PerpendicularOffset>7</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>Lane 1-5, non tunnel zoom 8000-16000</Name>
					<Description>
						<Title>Surface Roads (Zoom 8k-16k)</Title>
						<Abstract>Rendering for surface roads at zoom 1:8000 to 1:16000.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsBetween>
								<ogc:PropertyName>lanes</ogc:PropertyName>
								<ogc:LowerBoundary><ogc:Literal>1</ogc:Literal></ogc:LowerBoundary>
								<ogc:UpperBoundary><ogc:Literal>5</ogc:Literal></ogc:UpperBoundary>
							</ogc:PropertyIsBetween>
							<ogc:PropertyIsNotEqualTo>
								<ogc:PropertyName>tunnel</ogc:PropertyName>
								<ogc:Literal>yes</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MinScaleDenominator>8000</MinScaleDenominator>
					<MaxScaleDenominator>16000</MaxScaleDenominator>
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
							<CssParameter name="stroke-width">10</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>5.25</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Grey Pavement -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
							<CssParameter name="stroke-width">6</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>5.25</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Directional Arrow -->
					
					<LineSymbolizer>
						<Stroke>
							<GraphicStroke>
								<Graphic>
									<ExternalGraphic>
										<OnlineResource xlink:type="simple" xlink:href="dirarrow90.svg"/>
										<Format>image/svg+xml</Format>
									</ExternalGraphic>
									<Size>8</Size>
								</Graphic>
							</GraphicStroke>
						</Stroke>
						<PerpendicularOffset>5.25</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>Lane 1-5, non tunnel zoom 16000-32000</Name>
					<Description>
						<Title>Surface Roads (Zoom 16k-32k)</Title>
						<Abstract>Rendering for surface roads at zoom 1:16000 to 1:32000.</Abstract>
					</Description>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:And>
							<ogc:PropertyIsBetween>
								<ogc:PropertyName>lanes</ogc:PropertyName>
								<ogc:LowerBoundary><ogc:Literal>1</ogc:Literal></ogc:LowerBoundary>
								<ogc:UpperBoundary><ogc:Literal>5</ogc:Literal></ogc:UpperBoundary>
							</ogc:PropertyIsBetween>
							<ogc:PropertyIsNotEqualTo>
								<ogc:PropertyName>tunnel</ogc:PropertyName>
								<ogc:Literal>yes</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>
						</ogc:And>
					</ogc:Filter>
					<MinScaleDenominator>16000</MinScaleDenominator>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
					
					
					<!-- Yellow Casing -->
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
							<CssParameter name="stroke-width">7</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>3.5</PerpendicularOffset>
					</LineSymbolizer>
					<!-- Grey Pavement -->
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
							<CssParameter name="stroke-width">5</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>3.5</PerpendicularOffset>
					</LineSymbolizer>
				</Rule>
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>
