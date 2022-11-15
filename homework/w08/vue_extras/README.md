# Vue Extras

Vue has a lot of cool components we can explore. Let's revisit some of the extra things we've learned, and try them our in your movie-vue-app.

### Frontend Validations

We can write whatever frontend validations we want, even if the validations don't actually exist on the backend! This may not be good practice, but we have the flexibility to include whatever we see fit.

In the your `movie-vue-app`, add a character count to your MoviesNew.vue form. Make sure the plot doesn't exceed a certain amount of characters!

### Vue Conditionals

We can use the jwt that we're storing in localStorage to conditionally show/hide links depending on the users current status.

If a user is logged in they should only see the Logout link in the navbar.
If a user is logged out, they should see Signup and Login in the navbar.

In App.vue, we should see something like this:

```xml
<router-link to="/signup">Signup</router-link>
<router-link to="/login">Login</router-link>
<router-link to="/logout">Logout</router-link>
```

In the `<script>` below, we can add a function to our methods option:

```js
methods: {
  isLoggedIn: function() {
    return localStorage.getItem('jwt');
  }
}
```

In the Vue authentication guide, when we login we use localStorage to set an item, and we can then use localStorage to retrieve that item in this `isLoggedIn` function, which will return true or false depending on if it finds a jwt in localStorage.

We then use the `isLoggedIn` function combined with the `v-if` directive to show or hide links, like so:

```xml
<span v-if="isLoggedIn()">
	<router-link to="/logout">Logout</router-link>
</span>
<span v-else>
	<router-link to="/signup">Signup</router-link>
	<router-link to="/login">Login</router-link>
</span>
```

This shows the Logout link when a user is logged in, otherwise (v-else indicates that the user is logged out) we show the Signup and Login links.

### Filtering

Filtering allows us to search through content easily. Vue has a library called vue2-filters which gives us a method to accomplish this.

In the your `movie-vue-app`, install the [vue2-filters](https://github.com/freearhey/vue2-filters) library like so:

```bash
npm install vue2-filters --save

```

Then, in a component like src/views/MoviesIndex.vue, import and register the library in your script, like this:

```js
import Vue2Filters from "vue2-filters";

// under export default {
  mixins: [Vue2Filters.mixin],
```

The filterBy method comes with the library we installed, it filters the list (case-insensitive) by the value and attribute specified:

```xml
<!-- views/MoviesIndex.vue -->
Search by title: <input v-model="titleFilter">
<div v-for="movie in filterBy(movies, titleFilter, 'title')">

```

```js
data: {
  // ...
  titleFilter: "";
}
```

In your Movies Index, let's implement autocomplete by adding a datalist:

```xml
<!-- views/MoviesIndex.vue -->
Search by name: <input v-model="titleFilter" list="titles">
<datalist id="titles">
	<option v-for="movie in movies" v-bind:key="movie.id">{{ movie.title }}</option>
</datalist>
```

### Sorting

We an order our movies by any attribute we want. Let's create a button to order them alphabetically:

```xml
<!-- views/MoviesIndex.vue -->
<div>
	<button>Sort Alphabetically</button>
</div>

```

Then in the JavaScript, sort by an attribute such as title. The orderBy method comes with the library we installed, it orders the list by the attribute specified:

```xml
<!-- views/MoviesIndex.vue -->
<div v-for="movie in orderBy(movies, 'title')">

```

By adding the orderBy, we lost the ability to filter the list. We can include both with the following:

```xml
<!-- views/MoviesIndex.vue -->
<div v-for="movie in orderBy(filterBy(movies, titleFilter, 'title'), 'title')">
```

**Bonus**

- Add buttons to filter by multiple attributes for movies.
- Try adding in some dynamic classes to make elements change color when clicked on.
- Implement some Vue Animations for movies.

#### Deliverable

Update your `movie-vue-app` on github by doing a git add, commit, and push.

Then, go to the `vue_extras_solution.md` file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
