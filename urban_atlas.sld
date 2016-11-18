<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>Urban atlas</Name>
      <UserStyle>
        <Title>Continuous Urban Fabric (S.L. > 80%)</Title>
          <Abstract>Code is 11100</Abstract>
            <FeatureTypeStyle>
<Rule>
<Name>Continuous Urban Fabric (S.L. > 80%)</Name>
<Title>Continuous Urban Fabric (S.L. > 80%)</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>11100</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#a03037</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Discontinuous Dense Urban Fabric (S.L. : 50% -  80%)</Name>
<Title>Discontinuous Dense Urban Fabric (S.L. : 50% -  80%)</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>11210</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ce2430</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Discontinuous Medium Density Urban Fabric (S.L. : 30% - 50%)</Name>
<Title>Discontinuous Medium Density Urban Fabric (S.L. : 30% - 50%)</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>11220</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#ee2427</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Discontinuous Low Density Urban Fabric (S.L. : 10% - 30%)</Name>
<Title>Discontinuous Low Density Urban Fabric (S.L. : 10% - 30%)</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>11230</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#f6997c</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Discontinuous Very Low Density Urban Fabric (S.L. less 10%)</Name>
<Title>Discontinuous Very Low Density Urban Fabric (S.L. less 10%)</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>11240</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#fcc9b5</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Isolated Structures</Name>
<Title>Isolated Structures</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>11300</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#cb7e69</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Industrial, commercial, public, military and private units</Name>
<Title>Industrial, commercial, public, military and private units</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>12100</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#c66ca5</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Fast transit roads and associated land</Name>
<Title>Fast transit roads and associated land</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>12210</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#f37924</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Other roads and associated land</Name>
<Title>Other roads and associated land</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>12220</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#fab586</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Railways and associated land</Name>
<Title>Railways and associated land</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>12230</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#828587</CssParameter>
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
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>12300</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#e0c1dd</CssParameter>
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
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>12400</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#e1cbd1</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Mineral extraction and dump sites</Name>
<Title>Mineral extraction and dump sites</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>13100</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#9a6c5b</CssParameter>
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
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>13300</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#cea879</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Land without current use</Name>
<Title>Land without current use</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>13400</ogc:Literal>
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
<Name>Green urban areas</Name>
<Title>Green urban areas</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>14100</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#a8bd3d</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Sports and leisure facilities</Name>
<Title>Sports and leisure facilities</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>14200</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#d9e591</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Agricultural + Semi-natural areas + Wetlands</Name>
<Title>Agricultural + Semi-natural areas + Wetlands</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>20000</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#fff8ba</CssParameter>
</Fill>
<Stroke>
<CssParameter name="stroke">#000000</CssParameter>
<CssParameter name="stroke-width">0.1</CssParameter>
</Stroke>
</PolygonSymbolizer>
</Rule>
<Rule>
<Name>Forests</Name>
<Title>Forests</Title>
<ogc:Filter>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>30000</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#007149</CssParameter>
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
<ogc:PropertyName>code</ogc:PropertyName>
<ogc:Literal>50000</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<PolygonSymbolizer>
<Fill>
<CssParameter name="fill">#0095cf</CssParameter>
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
