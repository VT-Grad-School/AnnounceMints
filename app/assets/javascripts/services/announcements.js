'use strict';
angular.module('Announcemints')
  .service('Announcements', ['$resource', function ($resource) {
    let Announcement = $resource('/announcements');

    this.add = function (options) {
      let data = {};
      if (options) {
        data = options;
      } else {
        data = {       
          title: 'Announecement Title',
          description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum commodi fugiat unde reprehenderit labore vitae rerum aperiam dolore nostrum nemo tempora, vel eligendi? Eos aliquam beatae officia explicabo voluptates voluptatum!',
          contact: 'some@email.com',
          url: 'http://example.com'
        };
      }
      let newAnnouncement = new Announcement();
      newAnnouncement.title = data.title;
      newAnnouncement.description = data.description;
      newAnnouncement.contact = data.contact;
      newAnnouncement.url = data.url;
      newAnnouncement.$save();

      // ActionController::InvalidAuthenticityToken
      // in AnnouncementsController#create
    };
  }]);