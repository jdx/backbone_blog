class BackboneBlog.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null
  
class BackboneBlog.Collections.PostsCollection extends Backbone.Collection
  model: BackboneBlog.Models.Post
  url: '/posts'