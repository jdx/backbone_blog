BackboneBlog.Views.Posts ||= {}

class BackboneBlog.Views.Posts.EditView extends Backbone.View
  template : JST["backbone/templates/posts/edit"]
  
  events :
    "submit #edit-post" : "update"
    
  update : (e) ->
    e.preventDefault()
    e.stopPropagation()
    
    @model.save(null,
      success : (post) =>
        @model = post
        window.location.hash = "/#{@model.id}"
      error: (post, response) =>
        console.log post
        console.log response
    )
    
  render : ->
    $(this.el).html(this.template(@model.toJSON() ))
    
    this.$("form").backboneLink(@model)
    
    return this
