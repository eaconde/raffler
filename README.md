# **An implementation of the Backbone Framework on Ruby on Rails**

### Understanding **Backbone.js** Architecture

The videos provided on the [Railscast](http://railscasts.com) episodes [323](https://www.youtube.com/watch?v=lRuBxG7rTX4) and [325](https://www.youtube.com/watch?v=98oUGEz_y4g) will provide a good solid understanding of how the architecture works.

I'm doing this in [Rails 4.2](http://rubyonrails.org/) (video was in 3.2) with [backbone-on-rails](https://github.com/meleyal/backbone-on-rails) at v1.2 and have encountered some issues as follows:

1. Fetching Data

   The code `@collection.fetch()` will no longer work as is. Instead, we have to implicitly specify if we want `fetch()` to trigger a [reset](http://backbonejs.org/#Collection-reset) by adding the option `{reset:true}`.

2. Adding New Entry

   The video didn't specify the method for the form. However when I tried the same code, it used `GET`. Simply adding the `method="post"` to the form should resolve the problem.  

   **NOTE:** After submitting a new entry, the form will automatically `reset()` the content of the input.

3. Backbone Scaffold

   Generating a scaffold will already append the `model: Raffler.Models.Entry` to the **entry.js.coffee** file unlike in the video wherein it has to be manually added.
