/*globals console, jQuery, L, alert*/

//events - a super-basic Javascript (publish subscribe) pattern

var mapiEvents = {
  events: {},
  on: function (eventName, fn) {
    this.events[eventName] = this.events[eventName] || [];
    this.events[eventName].push(fn);
  },
  off: function (eventName, fn) {
    if (this.events[eventName]) {
      for (var i = 0; i < this.events[eventName].length; i++) {
        if (this.events[eventName][i] === fn) {
          this.events[eventName].splice(i, 1);
          break;
        }
      }
    }
  },
  emit: function (eventName, data) {
    if (this.events[eventName]) {
      this.events[eventName].forEach(function (fn) {
        fn(data);
      });
    }
  }
};


var dataLayers = [
  {
    "fullLayerName": "smartland:corine4",
    "shortName": "corine4",
    "worspace": "smartland",
    "displayName": "Corine",
    "description": "",
    "options": {
      "format": "image/png8",
      "version": "1.1.1",
      "transparent": true,
    },
    "url": "http://smartland.vps.websupport.sk/geoserver/gwc/service/wms?",
    "zIndex": 10,
    "load": true,
    "dataCode": [{
        "title": "Continuous urban fabric",
        "code": 111,
        "color": "#e6004d"
      },
      {
        "title": "Discontinuous urban fabric",
        "code": 112,
        "color": "#ff0000"
      },
      {
        "title": "Industrial or commercial units",
        "code": 121,
        "color": "#cc4df2"
      },
      {
        "title": "Road and rail networks and associated land",
        "code": 122,
        "color": "#cc0000"
      },
      {
        "title": "Port areas",
        "code": 123,
        "color": "#e6cccc"
      },
      {
        "title": "Airports",
        "code": 124,
        "color": "#e6cce6"
      },
      {
        "title": "Mineral extraction sites",
        "code": 131,
        "color": "#a600cc"
      },
      {
        "title": "Dump sites",
        "code": 132,
        "color": "#a64d00"
      },
      {
        "title": "Construction sites",
        "code": 133,
        "color": "#ff4dff"
      },
      {
        "title": "Green urban areas",
        "code": 141,
        "color": "#ffa6ff"
      },
      {
        "title": "Sport and leisure facilities",
        "code": 142,
        "color": "#ffe6ff"
      },
      {
        "title": "Non-irrigated arable land",
        "code": 211,
        "color": "#ffffa8"
      },
      {
        "title": "Permanently irrigated land",
        "code": 212,
        "color": "#ffff00"
      },
      {
        "title": "Rice fields",
        "code": 213,
        "color": "#e6e600"
      },
      {
        "title": "Vineyards",
        "code": 221,
        "color": "#e68000"
      },
      {
        "title": "Fruit trees and berry plantations",
        "code": 222,
        "color": "#f2a64d"
      },
      {
        "title": "Olive groves",
        "code": 223,
        "color": "#e6a600"
      },
      {
        "title": "Pastures",
        "code": 231,
        "color": "#e6e64d"
      },
      {
        "title": "Annual crops associated with permanent crops",
        "code": 241,
        "color": "#ffe6a6"
      },
      {
        "title": "Complex cultivation patterns",
        "code": 242,
        "color": "#ffe64d"
      },
      {
        "title": "Land principally occupied by agriculture with significant areas of natural vegetation",
        "code": 243,
        "color": "#e6cc4d"
      },
      {
        "title": "Agro-forestry areas",
        "code": 244,
        "color": "#f2cca6"
      },
      {
        "title": "Broad-leaved forest",
        "code": 311,
        "color": "#80ff00"
      },
      {
        "title": "Coniferous forest",
        "code": 312,
        "color": "#00a600"
      },
      {
        "title": "Mixed forest",
        "code": 313,
        "color": "#4dff00"
      },
      {
        "title": "Natural grasslands",
        "code": 321,
        "color": "#ccf24d"
      },
      {
        "title": "Moors and heathland",
        "code": 322,
        "color": "#a6ff80"
      },
      {
        "title": "Sclerophyllous vegetation",
        "code": 323,
        "color": "#a6e64d"
      },
      {
        "title": "Transitional woodland-shrub",
        "code": 324,
        "color": "#a6f200"
      },
      {
        "title": "Beaches - dunes - sands",
        "code": 331,
        "color": "#e6e6e6"
      },
      {
        "title": "Bare rocks",
        "code": 332,
        "color": "#cccccc"
      },
      {
        "title": "Sparsely vegetated areas",
        "code": 333,
        "color": "#ccffcc"
      },
      {
        "title": "Burnt areas",
        "code": 334,
        "color": "#000000"
      },
      {
        "title": "Glaciers and perpetual snow",
        "code": 335,
        "color": "#a6e6cc"
      },
      {
        "title": "Inland marshes",
        "code": 411,
        "color": "#a6a6ff"
      },
      {
        "title": "Peat bogs",
        "code": 412,
        "color": "#4d4dff"
      },
      {
        "title": "Salt marshes",
        "code": 421,
        "color": "#ccccff"
      },
      {
        "title": "Salines",
        "code": 422,
        "color": "#e6e6ff"
      },
      {
        "title": "Intertidal flats",
        "code": 423,
        "color": "#a6a6e6"
      },
      {
        "title": "Water courses",
        "code": 511,
        "color": "#00ccf2"
      },
      {
        "title": "Water bodies",
        "code": 512,
        "color": "#80f2e6"
      },
      {
        "title": "Coastal lagoons",
        "code": 521,
        "color": "#00ffa6"
      },
      {
        "title": "Estuaries",
        "code": 522,
        "color": "#a6ffe6"
      },
      {
        "title": "Sea and ocean",
        "code": 523,
        "color": "#e6f2ff"
      }]
  },
  {
    "fullLayerName": "smartland:urban",
    "shortName": "urban",
    "worspace": "smartland",
    "displayName": "Urban Atlas",
    "description": "",
    "options": {
      "format": "image/png8",
      "version": "1.1.1",
      "transparent": true,
    },
    "url": "http://smartland.vps.websupport.sk/geoserver/gwc/service/wms?",
    "zIndex": 11,
    "load": true,
    "dataCode": [{
        title: "Continuous Urban Fabric (S.L. > 80%)",
        code: 11100,
        color: "#a03037"
  },
      {
        title: "Discontinuous Dense Urban Fabric (S.L. : 50% -  80%)",
        code: 11210,
        color: "#ce2430"
  },
      {
        title: "Discontinuous Medium Density Urban Fabric (S.L. : 30% - 50%)",
        code: 11220,
        color: "#ee2427"
  },
      {
        title: "Discontinuous Low Density Urban Fabric (S.L. : 10% - 30%)",
        code: 11230,
        color: "#f6997c"
  },
      {
        title: "Discontinuous Very Low Density Urban Fabric (S.L. less 10%)",
        code: 11240,
        color: "#fcc9b5"
  },
      {
        title: "Isolated Structures ",
        code: 11300,
        color: "#cb7e69"
  },
      {
        title: "Industrial, commercial, public, military and private units",
        code: 12100,
        color: "#c66ca5"
  },
      {
        title: "Fast transit roads and associated land",
        code: 12210,
        color: "#f37924"
  },
      {
        title: "Other roads and associated land",
        code: 12220,
        color: "#fab586"
  },
      {
        title: "Railways and associated land",
        code: 12230,
        color: "#828587"
  },
      {
        title: "Port areas",
        code: 12300,
        color: "#e0c1dd"
  },
      {
        title: "Airports",
        code: 12400,
        color: "#e1cbd1"
  },
      {
        title: "Mineral extraction and dump sites",
        code: 13100,
        color: "#9a6c5b"
  },
      {
        title: "Construction sites",
        code: 13300,
        color: "#cea879"
  },
      {
        title: "Land without current use",
        code: 13400,
        color: "#ffff00"
  },
      {
        title: "Green urban areas",
        code: 14100,
        color: "#a8bd3d"
  },
      {
        title: "Sports and leisure facilities",
        code: 14200,
        color: "#d9e591"
  },
      {
        title: "Agricultural + Semi-natural areas + Wetlands",
        code: 20000,
        color: "#fff8ba"
  },
      {
        title: "Forests",
        code: 30000,
        color: "#007149"
  },
      {
        title: "Water bodies",
        code: 50000,
        color: "#0095cf"
  }]

  }
];

var baseLayer = "https://api.mapbox.com/styles/v1/oksid/ciqu276fx000rccmfkt2y7h68/tiles/256/{z}/{x}/{y}?access_token=pk.eyJ1Ijoib2tzaWQiLCJhIjoiY2lqYWtwN2s3MDAyeHZva3E0OWlsZTZwNyJ9.wMClMXnln0J9ePTZpRuHvQ";

var mappi = (function ($, L, settings) {

  var
    dataLayers = settings.dataLayers || [],
    _dataLayersOrder = function () {
      return dataLayers.map(function (layer) {
        return layer.shortName;
      });
    },
    _map = {},
    _DataLayers = {},
    _BaseLayer = {},
    _polygons = {},
    _popup = {},
    _featureInfoCalls = [],
    _FeaturInfoData = {},
    _infoBox = {},
    _getFeatureInfoContent = {
      urban: function (data) {
        return '<h2>Urban Atlas</h2><p>' + data.features[0].properties.item + "<p>";
      },
      corine4: function (data) {
        var toReturn = "<h2>Corine</h2>",
          info = {},
          layerObj = dataLayers.filter(function (layer) {
            if (layer.shortName === 'corine4') {
              return true;
            }
          }),
          dataCode = data.features[0].properties.code_12;

        layerObj[0].dataCode.filter(function (item) {
          if (item.code == dataCode) {
            toReturn = toReturn + "<p>" + item.title + "</p>";
            info.description = item.title;
            info.badgeColor = item.color;
          }
        });

        info.title = 'Corine';
        info.name = 'corine';

        _featureInfoTemplate(info);

        return toReturn;
      }
    },
    _featureInfoTemplate = function (data) {

      return $('<div>', {
        'class': 'mappiInfoBoxItem mappiInfoBoxitem-' + data.name,
        'html': $('<h2>', {
          'text': data.title
        }) + $('<p>', {
          html: $('<span>', {
            'class': 'badge',
            'html': '&nbsp;'
          }) + '&nbsp;' + data.description
        })
      });

    },
    _getPolygonOptions = {
      urban: function (data) {
        var options = {
            fillOpacity: settings.polygon.fillOpacity || 0.8,
            weight: 3,
            color: "#000"
          },
          colorCodesMap = _getLayerObjFromData(data).dataCode,
          layer = _getLayerObjFromData(data);

        console.log('colorCodesMap', colorCodesMap);

        options.fillColor = colorCodesMap[data.features[0].properties.code];
        options.fillColor = layer.dataCode.filter(function (code) {
          return code.code == data.features[0].properties.code;
        })[0].color;

        return options;
      },
      corine4: function (data) {
        var options = {
            fillOpacity: settings.polygon.fillOpacity || 0.8,
            weight: 3,
            color: "#000"
          },

          layer = _getLayerObjFromData(data);

        options.fillColor = layer.dataCode.filter(function (code) {
          return code.code == data.features[0].properties.code_12;
        })[0].color;


        return options;
      }
    };

  function _getLayerObjFromData(data) {
    var shortName = data.features[0].id.split('.')[0];

    return dataLayers.filter(function (layer) {
      return layer.shortName === shortName;
    })[0];
  }


  function _addBaseLayer() {
    _BaseLayer.baseLayer = L.tileLayer(settings.baseLayer, {
        zIndex: 100
      })
      .addTo(_map);
  }

  function _watchZooom() {
    _map.on('zoomend', function (e) {
      settings.zoomLevel = _map.getZoom();
    });
  }

  function _watchMove() {
    _map.on('moveend', function (e) {
      settings.center = _map.getCenter();
    });
  }

  function _addDataLayers(layers) {
    layers.forEach(function (layer) {
      if (layer.load === true) {
        console.log(layer);
        layer.options.layers = layer.options.layers || layer.fullLayerName;
        _DataLayers[layer.displayName] = L.tileLayer.wms(layer.url, layer.options).addTo(_map);
      }
    });
  }

  function _displayFetureInfo() {
    _map.on('click', function (e) {
      _removePolygons();
      _clearFeaturInfoData();
      for (var displayName in _DataLayers) {
        if (_DataLayers.hasOwnProperty(displayName)) {


          var layer = _DataLayers[displayName],
            layerID = layer.wmsParams.layers.split(":")[1];
          if (layer._container) {

            loadIndicate('start');

            var point = layer._map.latLngToContainerPoint(e.latlng, layer._map.getZoom()),
              size = layer._map.getSize(),
              url = '',
              params = {
                request: 'GetFeatureInfo',
                service: 'WMS',
                srs: 'EPSG:4326',
                version: layer.wmsParams.version,
                bbox: layer._map.getBounds().toBBoxString(),
                height: size.y,
                width: size.x,
                layers: layer.wmsParams.layers,
                query_layers: layer.wmsParams.layers,
                info_format: 'application/json'
              };

            params[params.version === '1.3.0' ? 'i' : 'x'] = point.x;
            params[params.version === '1.3.0' ? 'j' : 'y'] = point.y;

            url = layer._url + L.Util.getParamString(params, layer._url, true);
            _getFeatureData(url, layerID);

          }
        }
      }
    });
  }

  function loadIndicate(event) {

    if (event === 'start') {
      $('#loadIndicator').addClass('loading');
    }

    if (event === 'end' || !event) {
      $('#loadIndicator').removeClass('loading');
    }

  }

  function _clearFeaturInfoData() {
    _FeaturInfoData = {};
  }

  function _getFeatureData(url, context) {
    $.ajax({
        url: url,
        context: {
          'layerID': context
        },
        beforeSend: function () {
          _featureInfoCalls.push(context);
        }
      })
      .success(function (data) {
        if (data.features.length > 0) {
          /*_handleGetFeatureInfoResponse(data, this.layerID);*/
          _FeaturInfoData[context] = data;
        }

      })
      .fail(function (data) {
        console.log('failed');
      })
      .done(function (data) {

        var itemPos = _featureInfoCalls.indexOf(this.layerID);
        if (itemPos > -1) {
          _featureInfoCalls.splice(itemPos, 1);
        }

        if (_featureInfoCalls.length === 0) {
          _renderInfo();
          loadIndicate('end');
        }
      });
  }

  function _renderInfo() {
    _renderPolygons();
    _renderInfoBox();
  }

  function _renderPolygons() {
    console.log('render polygons', _FeaturInfoData);
    var layerIDs = dataLayers.map(function (item) {
        return item.shortName;
      }),
      data, options, coordinates;

    layerIDs.forEach(function (item) {
      data = _FeaturInfoData[item];
      if (data) {
        coordinates = _converCordinaes(data.features[0].geometry.coordinates[0]);
        options = _getPolygonOptions[item](data);
        _polygons[item] = L.polygon(coordinates, options).addTo(_map);
      }
    });
  }

  function _renderInfoBox() {
    _createInfoBox();
    _clearInfoBox();
    _displayFeaturesInfo();

  }

  function _displayFeaturesInfo() {
    console.log('_FeaturInfoData', _FeaturInfoData);

    for (var key in _FeaturInfoData) {
      if (_FeaturInfoData.hasOwnProperty(key)) {
        var mapInfoHtml = $('<div>', {
            'class': 'mappiInfoBoxItem mappiInfoBoxitem-' + key
          })
          .append($(_getFeatureInfoContent[key](_FeaturInfoData[key])));
        _infoBox.$.append(mapInfoHtml);


        console.log(key + " -> ", _FeaturInfoData[key]);
      }
    }
  }

  function _clearInfoBox() {
    _infoBox.$.html("");
  }

  function _createInfoBox() {
    if (typeof _infoBox.$ === 'undefined') {
      _infoBox.$ = $('<div>', {
        'class': 'mappiInfoBox'
      }).on('click', function (e) {
        e.stopImmediatePropagation();
        return false;
      });
    }
    if ($(_map.getContainer()).find('.mappiInfoBox').length === 0) {
      $(_map.getContainer()).append(_infoBox.$);
    }
  }

  function _removePolygons() {
    var layersShortName = dataLayers.map(function (layer) {
      return layer.shortName;
    });
    layersShortName.forEach(function (layerName) {
      var polygon = _polygons[layerName];
      if (typeof polygon != 'undefined') {
        _map.removeLayer(polygon);
      }

    });
    console.log(layersShortName);

  }

  function _converCordinaes(latlngs) {

    var i = 0,
      coordinatesArray = [];

    if (typeof latlngs[0] === 'object') {

      for (i = 0; i < latlngs.length; i++) {

        coordinatesArray.push(_converCordinaes(latlngs[i]));

      }
      return coordinatesArray;
    } else {

      //var point = point = new L.Point(latlngs[0], latlngs[1]),
      var point = new L.Point(latlngs[0], latlngs[1]),
        earthRadius = 6378137,
        latlng = L.Projection.SphericalMercator.unproject(point.divideBy(earthRadius));
      return latlng;
    }
  }




  function _render() {
    _map = L.map('map', settings.mapOptions).setView(settings.center, settings.zoomLevel);

    _watchZooom();
    _watchMove();
    _addDataLayers(dataLayers);
    _addBaseLayer();
    _displayFetureInfo();

    L.control.layers({}, _DataLayers).addTo(_map);
    _BaseLayer.baseLayer.setZIndex(100);
    L.control.scale({
      imperial: false
    }).addTo(_map);
    L.control.zoom().addTo(_map);
  }

  function loadMap() {
    _render();
  }

  function addDataLayer(layer) {
    dataLayers.push(layer);
    _render();
    return dataLayers;
  }

  function getDataLayersAr() {
    return dataLayers;
  }

  function getCenter() {
    return _map.getCenter();
  }

  function setCenter(obj) {
    _map.panTo(obj);
  }

  function getZoom() {
    return _map.getZoom();
  }

  function setZoom(obj) {
    _map.setZoom(obj);
  }

  function getBounds() {
    return _map.getBounds();
  }

  function getMinZoom() {
    return _map.getMinZoom();
  }


  return {
    loadMap: loadMap,
    getCenter: getCenter,
    getZoom: getZoom,
    setZoom: setZoom,
    getBounds: getBounds,
    setCenter: setCenter,
    getMinZoom: getMinZoom,
    addDataLayer: addDataLayer
  };

})(jQuery, L, {
  dataLayers: dataLayers,
  baseLayer: baseLayer,
  mapOptions: {
    maxZoom: 15,
    minZoom: 5,
    zoomControl: false
  },
  center: [48.14455610362899, 17.114295959472656],
  zoomLevel: 5,
  polygon: {
    fillOpacity: 0.8
  }
});
