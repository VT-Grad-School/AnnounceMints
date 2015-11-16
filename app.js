angular.module('flapperNews', ['ui.router'])

//= require angular-ui-router`
.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: '/home.html',
      controller: 'MainCtrl'
    });

  $urlRouterProvider.otherwise('home');
}])

.factory('posts', [function(){
  var o = {
    posts: []
  };
  return o;
}])
    .controller('MainCtrl', [
'$scope',
'posts',
function($scope, posts){

            $scope.incrementUpvotes = function(post) {
                post.upvotes += 1;
            };

            $scope.addPost = function() {
                if (!$scope.title || $scope.title === '') {
                    return;
                }
                $scope.posts.push({
                    title: $scope.title,
                    link: $scope.link,
                    upvotes: 0
                });
                $scope.title = '';
                $scope.link = '';
            };
            $scope.posts = posts.posts;
        }
    ]);
