import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('home', { path: '/' });
  this.route('blog', function () {
    this.route('posts');
    this.route('post', { path: '/post/:post_id' });
  });
  this.route('stuff', function() {
    this.route('falloutjunk');
  });
  this.route('page-not-found', { path: '/*wildcard' });
});

export default Router;
