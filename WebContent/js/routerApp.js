var routerApp = angular.module('routerApp', ['ui.router']);

routerApp.config(function($stateProvider, $urlRouterProvider) {
    
    $urlRouterProvider.otherwise('/home');
    
    $stateProvider
        
        // HOME STATES AND NESTED VIEWS ========================================
        .state('home', {
            url: '/home',
            templateUrl: 'partial-home.html'
        })
        
        // nested list with custom controller
        .state('home.list', {
            url: '/list',
            templateUrl: 'partial-home-list.html',
            controller: function($scope) {
                $scope.dogs = ['Bernese', 'Husky', 'Goldendoodle'];
            }
        })
         $stateProvider
        
        // HOME STATES AND NESTED VIEWS ========================================
        .state('home.whentopublish', {
            url: '/whentopublish',
            templateUrl :'/views/whentopublish.jsp'
			
        })
   
        
        // nested list with just some random string data
        .state('home.whotonotify', {
            url: '/whotonotify',
            templateUrl :'/views/whotonotify.jsp'
			
        })
        
        
        .state('sumilist', {
            url: '/sumilist',
            templateUrl: 'views/partial-home-sumilist.html',
            controller: function($scope) {
                $scope.dogs = ['Bernese', 'Husky', 'Goldendoodle'];
            }
        })
        
        // nested list with just some random string data
        .state('sumiparagraph', {
            url: '/sumiparagraph',
            template: 'I could sure use a Sumi drink right now.'
        })
        
        
        
        
        // ABOUT PAGE AND MULTIPLE NAMED VIEWS =================================
        .state('about', {
            url: '/about',
            views: {
                '': { templateUrl: 'partial-about.html' },
                'columnOne@about': { template: 'Look I am a column!' },
                'columnTwo@about': { 
                    templateUrl: 'table-data.html',
                    controller: 'scotchController'
                }
            }
            
        });
        
});

routerApp.controller('scotchController', function($scope) {
    
    $scope.message = 'test';
    $scope.campaignId = 0;
    $scope.scotches = [
        {
            name: 'Macallan 12',
            price: 50
        },
        {
            name: 'Chivas Regal Royal Salute',
            price: 10000
        },
        {
            name: 'Glenfiddich 1937',
            price: 20000
        }
    ];
    
});