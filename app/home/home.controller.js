/*global angular, dataLayers, mappi*/
(function () {
  'use strict';

  angular
    .module('app.controllers')
    .controller('HomeController', HomeController);

  function HomeController() {
    /*jshint validthis: true*/
    var vm = this,
      legend = dataLayers.map(function (layer) {
        return {
          name: layer.shortName,
          title: layer.displayName,
          items: layer.dataCode
        };
      });
    vm.displayLegend = false;

    vm.legend = legend;
    vm.title = 'Home Controller Content';

    vm.legendGui = function (event) {
      if (event === 'hide') {
        vm.displayLegend = false;
      } else {
        vm.displayLegend = true;
      }
    };

    mappi.loadMap();
  }

})();
