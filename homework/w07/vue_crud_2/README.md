# Vue CRUD 2

We've learned how to do CRUD actions using Vue.js at this point. However, JavaScript is a lot less structured than Rails, and allows you to accomplish the same task in many different ways. So, it’s important to focus on understanding the general concepts and NOT memorizing the syntax, since we'll be learning a lot of different ways to do things!

### Review Error Handling

If we want our app to tell us when something didn't go as expected (a.k.a. our data is invalid, or something else is wrong), we can use error handling. Let's look back at how to do error handling on the frontend.

In our Vue.js template, the html contains somewhere to display errors, like this:

```xml
<ul>
	<li v-for="error in errors">{{ error }}</li>
</ul>
```

The data section in our script tag will contain an empty errors array, and our submit method like so:

```js
export default {
  data: function () {
    return {
      newRecipeParams: {},
      errors: []
    };
  }
};
```

And lastly, in the script tag where we are submitting data and making an axios request, we will "catch" errors and fill the errors array if we get a server-side error:

```js
methods: {
  submit: function() {
    axios
      .post("/recipes", this.newRecipeParams)
      .then(response => {
        console.log("Success", response.data);
      })
      .catch(error => {
        this.errors = error.response.data.errors;
      });
  }
}
```

### Exercise

Let's create a new Rails backend and Vue.js frontend to combine what we've learned! Use the CRUD single page guide when you get stuck.

1. Make a new Rails API app in your Actualize folder called `places-api`.

2. Make a Place model with two attributes - name and address. Use the seeds file or the rails console to make some initial data.

3. Make a `places` controller.

4. Make the places index/create/show/update/destroy actions.

5. Create a new Vue.js app in your Actualize folder called `places-vue-app`.

6. Use Vue.js to build the index/new/create/show/edit/update/destroy actions on the frontend in a single view.

7. Add backend validations with happy/sad paths in the controller.

8. Add frontend validations with happy/sad paths in the view.

#### Deliverable

Add both your `places-api` and the `places-vue-app` to Github.

Then, go to the vue_crud_2_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
