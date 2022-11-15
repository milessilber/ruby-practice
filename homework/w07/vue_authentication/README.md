# Vue Authentication

We can use Vue routing to create authentication on the front end.

You can use Vue.js to create multiple pages in your frontend using the vue-router library, which already comes installed with our Vue projects. This allows you to create routes on your frontend that point to different Vue.js components (similar to how your backend routes point to different actions in your Rails controllers).

There are a couple steps to creating a new route in Vue.

1. Create a new view file in src/views.
2. In src/router/index.js, import the view file and add a new route.

### Review Backend Auth

In our API's, signup uses the POST /api/users route to create a user. Then, login uses the POST /api/sessions route to create a JWT. The JWT must be included as part of the headers for later requests. Lastly, logout deletes the JWT.

### Exercise

Let's add in frontend authentication for our users in the `movie-vue-app`.

First, check to make sure that your backend auth is working. Check the Signup and Login routes using Insomnia.

Then, use your Vue.js Authentication guide to help you do the following:

1. Add a signup page (with redirect)
2. Add a login page (with redirect)
3. Add a logout page (should redirect somewhere else)

Test all these actions as you create them to make sure they're working.

#### Deliverable

Update your `movie-vue-app` on github by doing a git add, commit, and push.

Then, go to the `vue_authentication_solution.md` file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
