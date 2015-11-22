'use strict';
angular.module('Announcemints')
  .controller('NewPostCtrl', ['$scope', '$location', 'Announcements', function ($scope, $location, Announcements) {
    console.log('NewPostCtrl');
    $scope.things = ['idk', 'what', 'else', 'could', 'be', 
      'in', 'here', 'james', 'so', 'this', 'is', 'a', 'decent', 
      'skeleton', 'from', 'which', 'to', 'start', 
      'idk1', 'what1', 'else1', 'could1', 'be1', 
      'in1', 'here1', 'james1', 'so1', 'this1', 'is1', 'a1', 'decent1', 
      'skeleton1', 'from1', 'which1', 'to1', 'start1', 
      'idk2', 'what2', 'else2', 'could2', 'be2', 
      'in2', 'here2', 'james2', 'so2', 'this2', 'is2', 'a2', 'decent2', 
      'skeleton2', 'from2', 'which2', 'to2', 'start2'];

    $scope.selectedTab = function (tab) {
      console.log('selected', tab);
      $location.path('/new/'+tab);
    };

    $scope.activeTab = {
      'announcement': false,
      'call': false,
      'event': false,
      'job': false,
    };

    $scope.currentTab = function () {
      return Object.keys($scope.activeTab).filter((key) => {
        return key === pathFromUrl();
      })[0];
    };

    function pathFromUrl () {
      let newPathString = '/new/';
      let loadedPath = $location.path();
      let newPos = loadedPath.indexOf(newPathString);
      // console.log(loadedPath, newPos);
      if (newPos > -1) {
        // console.log(loadedPath.substr(newPos+newPathString.length));
        return loadedPath.substr(newPos+newPathString.length);
      } else {
        return 'announcement';
      }
    }
    $scope.activeTab[pathFromUrl()] = true;
    // $scope.activeTab = '';

    // $scope.isActive = function (tab) {
    //   return $location.path() === '/new/'+tab;
    // };

    $scope.newPost = {
      announcement: {},
      call: {},
      event: {},
      job: {}
    };

    $scope.submitPost = function () {
      console.log($scope.newPost[$scope.currentTab()]);
      Announcements.add($scope.newPost[$scope.currentTab()]);
    };
  }]);