//Wrap the module
(function() {
	//Declare the app module
	angular.module('app', [
		'ngMessages',
		'ngRoute',
		'ngMaterial',
		'ngAnimate',
		'ngAria',
		'ngSanitize',
		'dashboardModule',
		'filtersModule',
		'utilsModule',
		'loginModule',
		'menuModule',
		'previewsModule',
		'systemPermissionModule',
		'myDataModule',
		'errorModule',
		'objectsLogModule',
		'usersModule',
		'positionsModule',
		'chart.js',
		'ngImgCrop'
	])
	//Configurate the app
	.config(function($httpProvider, $routeProvider, $mdThemingProvider, $provide) {
		/******************HTTP CONFIGURATION******************/
		//Config the http request
	  	$httpProvider.defaults.transformRequest = function(data) {
			//Return undefined
			if (data === undefined) {
				return data;
			}
			//Return the object as text params
			return $.param(data);
		};
		//Set the content type as urlencoded
		$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		/******************NG-ROUTE CONFIGURATION******************/
		//Define the routes
		$routeProvider
		//Dashboard's module routes
		.when('/dashboard/', {
			template: '<dashboard-directive></dashboard-directive>'
		})
		.when('/data/', {
			template: '<my-data-directive></my-data-directive>'
		})
		.when('/data/edit/', {
			template: '<my-data-edit-directive></my-data-edit-directive>'
		})
		//User's module routes
		.when('/users/', {
			template: '<users-view-directive></users-view-directive>'
		})
		.when('/users/add/', {
			template: '<users-add-directive></users-add-directive>'
		})
		.when('/users/edit/:user/', {
			template: '<users-edit-directive></users-edit-directive>'
		})
		.when('/users/show/:user/', {
			template: '<users-show-directive></users-show-directive>'
		})
		.when('/users/log/:user/', {
			template: '<users-log-directive></users-log-directive>'
		})
		//Position's module routes
		.when('/positions/', {
			template: '<positions-view-directive></positions-view-directive>'
		})
		.when('/positions/add/', {
			template: '<positions-add-directive></positions-add-directive>'
		})
		.when('/positions/show/:position/', {
			template: '<positions-show-directive></positions-show-directive>'
		})

		.when('/positions/edit/:position/', {
			template: '<positions-edit-directive></positions-edit-directive>'
		})
		//Previews Module routes
		.when('/previews/pdfs/:file/', {
			template: '<previews-pdfs-directive></previews-pdfs-directive>'
		})
		//Error Permission
		.when('/error/permission/', {
			template: '<error-directive></error-directive>'
		})
		//Object' module route
		.when('/objects/log/:module/:data/', {
			template: '<objects-log-directive></objects-log-directive>'
		})
		//Default route
		.otherwise({
			template: '<dashboard-directive></dashboard-directive>'
		});
		/******************THEME CONFIGURATION******************/
		var socGreen = $mdThemingProvider.extendPalette('green', {
			'100': '388E3C',
			'200': '6DFB73',
			'400': '4CAF50',
			'contrastDefaultColor': 'light',
			'contrastDarkColors': undefined
		});
		var socYellow = $mdThemingProvider.extendPalette('yellow', {
			'100': 'FFEB3B',
			'400': 'FFEB3B',
			'800': 'FFC107',
			'contrastDefaultColor': 'light',
			'contrastDarkColors': ['400']
		});
		//Define the soc green palette
		$mdThemingProvider.definePalette('soc-green', socGreen);
		//Define the soc yellow palette
		$mdThemingProvider.definePalette('soc-yellow', socYellow);
		//Set the color theme
		$mdThemingProvider.theme('default')
		.primaryPalette('soc-green', {
			'default': '400',
			'hue-1': '100',
			'hue-2': '200'
		})
		.accentPalette('soc-yellow', {
			'default': '400',
			'hue-1': '100',
			'hue-2': '800'
		})
		.warnPalette('red');
		//Set the color theme
		$mdThemingProvider.theme('soc-dark')
		.primaryPalette('soc-green', {
			'default': '400',
			'hue-1': '100'
		})
		.accentPalette('soc-yellow', {
			'default': '400',
			'hue-1': '100',
			'hue-2': '800'
		})
		.warnPalette('red')
		.dark();
		$mdThemingProvider.setDefaultTheme('default');
	})
})();