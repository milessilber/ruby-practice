# Vue Routes

You can use Vue.js to create multiple pages in your frontend using the vue-router library, which already comes installed with our Vue projects. This allows you to create routes on your frontend that point to different Vue.js components (similar to how your backend routes point to different actions in your Rails controllers).

There are a couple steps to creating a new route in Vue.

1. Create a new view file in src/views.
2. In src/router/index.js, import the view file and add a new route.

We've learned how to do CRUD using multiple pages and that's what we will practice today, however it's important to remember we can do much more than just CRUD with routing!

### Exercise

In your `movie-vue-app`, let's create separate pages for all our CRUD actions for movies. Follow along with the Vue CRUD Cheat Sheet (last page) to do the following:

1. Make an index page for movies.
2. Make a new page for movies, including a functional form to create a new movie.
3. Make a show page to see an individual movie.
4. Make an edit page for movies, including a functional form to update an existing movie.
5. Add the destroy action to the movies edit page.

**SUPER Bonus:**

- Add separate restful views for Actors

#### Deliverable

Update your `movie-vue-app` on github by doing a git add, commit, and push.

Then, go to the `vue_routes_solution.md` file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
