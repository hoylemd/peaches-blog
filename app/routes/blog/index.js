import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return [
      1,
      2,
      3
    ];
  },

  actions: {
    view_post: function(post) {
      this.transitionTo('blog.post', post);
    }
  }
})
