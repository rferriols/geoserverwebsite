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
			
				<Rule>
					<Name>Tunnel Base Zoom 4000</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>4000</MaxScaleDenominator>
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">
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
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#474747</CssParameter>
							<CssParameter name="stroke-width">
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
					<Name>Tunnel Base Zoom 4000-8000</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MinScaleDenominator>4000</MinScaleDenominator>
					<MaxScaleDenominator>8000</MaxScaleDenominator>
					
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">
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

				<Rule>
					<Name>Tunnel Base Zoom 8000-16000</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MinScaleDenominator>8000</MinScaleDenominator>
					<MaxScaleDenominator>16000</MaxScaleDenominator>
					
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
					<Name>Tunnel Base Zoom 16000-32000</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>tunnel</ogc:PropertyName>
							<ogc:Literal>yes</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MinScaleDenominator>16000</MinScaleDenominator>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
					
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

				<Rule>
					<Name>All lanes Zoom 32000-64000</Name>
					<MinScaleDenominator>32000</MinScaleDenominator>
					<MaxScaleDenominator>64000</MaxScaleDenominator>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">4</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>3</PerpendicularOffset>
					</LineSymbolizer>
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
					<MinScaleDenominator>64000</MinScaleDenominator>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#F5EA64</CssParameter>
							<CssParameter name="stroke-width">2</CssParameter>
							<CssParameter name="stroke-linejoin">bevel</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
						</Stroke>
						<PerpendicularOffset>2</PerpendicularOffset>
					</LineSymbolizer>
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
				
				<Rule>
					<Name>Lane 1-5, non tunnel zoom 4000</Name>
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
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
							<CssParameter name="stroke-width">
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
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
							<CssParameter name="stroke-width">
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
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
							<CssParameter name="stroke-width">
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
						<PerpendicularOffset>7</PerpendicularOffset>
					</LineSymbolizer>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
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
						<PerpendicularOffset>7</PerpendicularOffset>
					</LineSymbolizer>
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
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
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
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
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
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#FFF0AD</CssParameter>
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
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#737373</CssParameter>
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

				<Rule>
					<Name>Global Lane 2 Markings</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>lanes</ogc:PropertyName>
							<ogc:Literal>2</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
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

				<Rule>
					<Name>Global Lane 3 Markings</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>lanes</ogc:PropertyName>
							<ogc:Literal>3</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
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

				<Rule>
					<Name>Global Lane 4 Markings</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>lanes</ogc:PropertyName>
							<ogc:Literal>4</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
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

				<Rule>
					<Name>Global Lane 5 Markings</Name>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>lanes</ogc:PropertyName>
							<ogc:Literal>5</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>32000</MaxScaleDenominator>
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

			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>
