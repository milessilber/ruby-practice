# Authentication and Hashing/Encryption

Unfortunately, all developers have to assume that someone will break into their database eventually. And when your database inevitably gets hacked, you don’t want hackers to have access to your user’s passwords. They probably use that password for something else (which is a big no-no, but hey we're only human!). To solve this problem, we want to hash passwords before saving them in a database.

Passwords are hashed in a “one-way” fashion, so that although we can take a password and hash it, if a hacker gets access to a hashed password, they cannot reverse the process so that they figure out the actual password. How does this work?

Well, as we've seen it's actually not impossible to reverse a hashed password. It would just take _so_ long that it's just not worth the time and computing power for a hacker to do! This makes it economically un-viable for a hacker and that's the ultimate goal.

If this is the case though and we can't translate a hashed password back into a plain password, how does the user sign in with a plain password? Well, when a user signs in to our site we actually hash their plain password and then check the newly hashed password against the previously hashed password in the database.

_Authentication_ is the process of determining _who_ is using your application. To do this, we want to allow users to sign up for an account! We'll need to store some information about the user (like an email and password) so they can then log in with that information.

The bcrypt gem is a great way to save hashed and secure passwords in the database. Let's use our authentication guide to create a brand new application.

#### Authentication app

Let's make a new rails application. In your actualize directory, create a new rails application called `auth-api`.

Follow the authentication guide to do the following actions:

1. Create a new user and allow for signing up in the application. (Part 1)
2. Send a POST request (use a `.http` file) to localhost:3000/users with the body parameters name, email, password, password_confirmation. Create 2 new users in the database.
3. Use the `jwt` gem to generate a JSON web token and log in a user that has already signed up. (Part 2)
4. Send a POST request to localhost:3000/sessions with parameters email and password.

Once the jwt is sent to the frontend, we can require the frontend to send it back for any requests requiring a user to be logged in.

5. Implement the back end user authentication. Test it out by temporarily adding current_user as part of your json output, then adding the jwt from the Login request to the request headers in the show action (Authorization => Bearer \_\_\_ ).

#### Bonus

Now that you've implemented authentication the "long way", research how to use the [devise gem](https://github.com/plataformatec/devise) to implement authentication using a gem! Create a new rails app and try using the devise gem to create user authentication.

#### Deliverable

Put your auth-api repository on github by doing a git add, commit, creating a new repo on github, linking the remote to local, and push to the main branch.

Then, go to the `authentication_solution.md` file and follow the instructions.

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
