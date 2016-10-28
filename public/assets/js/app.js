(function () {
  'use strict';

  angular.module('app', [
    'ngRoute',
    'ui.router',
    'app.factories',
    'app.services',
    'app.filters',
    'app.directives',
    'app.controllers'
  ])
  .config(
    function ($locationProvider) {
      $locationProvider.html5Mode(true);
    }
  );

  angular.module('app.factories', []);
  angular.module('app.services', ['ngResource']);
  angular.module('app.filters', []);
  angular.module('app.directives', []);
  angular.module('app.controllers', []);

})();

(function () {
  'use strict';

  angular.module('app').config(
    function ($stateProvider, $urlRouterProvider) {
      $stateProvider
        .state('home', {
          url: '/',
          templateUrl: '/app/home/home.html',
          controller: 'HomeController',
          controllerAs: 'vm'
        })
        .state('about', {
          url: '/about',
          templateUrl: '/app/about/about.html',
          controller: 'AboutController',
          controllerAs: 'vm'
        })
        .state('contact', {
          url: '/contact',
          templateUrl: '/app/contact/contact.html',
          controller: 'ContactController',
          controllerAs: 'vm'
        })
      ;
      // default path to navigate (also used as a fallback for missing urls)
      $urlRouterProvider.otherwise('/');
    }
  );

})();

(function () {
  'use strict';

  angular
    .module('app.controllers')
    .controller('AppController', AppController);

  AppController.$inject = ['$rootScope'];

  function AppController ($rootScope) {
    // controller implementation
  }

})();

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

(function () {
  'use strict';

  angular
    .module('app.controllers')
    .controller('AboutController', ContactController);

  function ContactController () {
    /*jshint validthis: true*/
    var vm = this;
    vm.title = 'About Controller Content';
  }

})();

(function () {
  'use strict';

  angular
    .module('app.controllers')
    .controller('ContactController', ContactController);

  function ContactController () {
    /*jshint validthis: true*/
    var vm = this;
    vm.title = 'Contact Controller Content';
  }

})();
