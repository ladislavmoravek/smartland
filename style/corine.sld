<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>Corine</Name>
      <UserStyle>
        <Title>Corine</Title>
          <Abstract>Corine</Abstract>
            <FeatureTypeStyle>
<Rule>
<Name>Continuous urban fabric</Name>
<Title>Continuous urban fabric</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>111</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#e6004d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Discontinuous urban fabric</Name>
<Title>Discontinuous urban fabric</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>112</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ff0000</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Industrial or commercial units</Name>
<Title>Industrial or commercial units</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>121</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#cc4df2</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Road and rail networks and associated land</Name>
<Title>Road and rail networks and associated land</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>122</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#cc0000</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Port areas</Name>
<Title>Port areas</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>123</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#e6cccc</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Airports</Name>
<Title>Airports</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>124</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#e6cce6</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Mineral extraction sites</Name>
<Title>Mineral extraction sites</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>131</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#a600cc</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Dump sites</Name>
<Title>Dump sites</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>132</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#a64d00</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Construction sites</Name>
<Title>Construction sites</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>133</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ff4dff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Green urban areas</Name>
<Title>Green urban areas</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>141</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ffa6ff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Sport and leisure facilities</Name>
<Title>Sport and leisure facilities</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>142</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ffe6ff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Non-irrigated arable land</Name>
<Title>Non-irrigated arable land</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>211</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ffffa8</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Permanently irrigated land</Name>
<Title>Permanently irrigated land</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>212</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ffff00</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Rice fields</Name>
<Title>Rice fields</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>213</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#e6e600</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Vineyards</Name>
<Title>Vineyards</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>221</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #e68000</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Fruit trees and berry plantations</Name>
<Title>Fruit trees and berry plantations</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>222</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #f2a64d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Olive groves</Name>
<Title>Olive groves</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>223</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #e6a600</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Pastures</Name>
<Title>Pastures</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>231</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #e6e64d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Annual crops associated with permanent crops</Name>
<Title>Annual crops associated with permanent crops</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>241</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #ffe6a6</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Complex cultivation patterns</Name>
<Title>Complex cultivation patterns</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>242</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #ffe64d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Land principally occupied by agriculture with significant areas of natural vegetation</Name>
<Title>Land principally occupied by agriculture with significant areas of natural vegetation</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>243</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #e6cc4d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Agro-forestry areas</Name>
<Title>Agro-forestry areas</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>244</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #f2cca6</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Broad-leaved forest</Name>
<Title>Broad-leaved forest</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>311</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #80ff00</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Coniferous forest</Name>
<Title>Coniferous forest</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>312</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #00a600</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Mixed forest</Name>
<Title>Mixed forest</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>313</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #4dff00</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Natural grasslands</Name>
<Title>Natural grasslands</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>321</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #ccf24d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Moors and heathland</Name>
<Title>Moors and heathland</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>322</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #a6ff80</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Sclerophyllous vegetation</Name>
<Title>Sclerophyllous vegetation</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>323</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #a6e64d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Transitional woodland-shrub</Name>
<Title>Transitional woodland-shrub</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>324</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #a6f200</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Beaches - dunes - sands</Name>
<Title>Beaches - dunes - sands</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>331</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #e6e6e6</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Bare rocks</Name>
<Title>Bare rocks</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>332</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #cccccc</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Sparsely vegetated areas</Name>
<Title>Sparsely vegetated areas</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>333</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #ccffcc</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Burnt areas</Name>
<Title>Burnt areas</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>334</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #000000</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Glaciers and perpetual snow</Name>
<Title>Glaciers and perpetual snow</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>335</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #a6e6cc</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Inland marshes</Name>
<Title>Inland marshes</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>411</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #a6a6ff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Peat bogs</Name>
<Title>Peat bogs</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>412</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #4d4dff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Salt marshes</Name>
<Title>Salt marshes</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>421</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #ccccff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Salines</Name>
<Title>Salines</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>422</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #e6e6ff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Intertidal flats</Name>
<Title>Intertidal flats</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>423</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #a6a6e</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>6Water courses</Name>
<Title>Water courses</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>511</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #00ccf2</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Water bodies</Name>
<Title>Water bodies</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>512</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #80f2e6</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Coastal lagoons</Name>
<Title>Coastal lagoons</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>521</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #00ffa6</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Estuaries</Name>
<Title>Estuaries</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>522</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #a6ffe6</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>

<Rule>
<Name>Sea and ocean</Name>
<Title>Sea and ocean</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code_12</ogc:PropertyName>
<ogc:Literal>523</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill"> #e6f2ff</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>


          </FeatureTypeStyle>
       </UserStyle>
      </NamedLayer>
</StyledLayerDescriptor>
