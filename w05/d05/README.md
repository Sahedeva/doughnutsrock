# JobbedOut

---

## THE GOAL
Looking for jobs online can be hard - let's crowdsource our work and create a site where users can find job postings and bookmark/save them so other people can see them as well. Kind of like reddit, but for job postings. A user should be able to do the following:

**User Stories:**
- A user can sign up (register) for an account.
- A user can log in to their account.
- A user can log out of their account.
- A user can enter the URL of a job posting (for example, [http://www.builtinaustin.com/job/front-end-developer-5](http://www.builtinaustin.com/job/front-end-developer-5)) to the app and save it. Job postings should also have a title and company associated with them.
- A user can see all of the jobs **each user has saved** by going to `/user/:id`, where `:id` is the ID of the user that saved that listing.
- A guest (non-logged-in user) can see all of the jobs added to the site **by anyone** on the homepage ('/').

**BONUS**
- Add a way for users to delete their job postings after adding them.
- Add a way for users to edit their job postings after adding them.
- Add a way for logged-in users to "favorite" other users' job postings.
    + What new route(s) will you need for this, if any?

## PHASES

### PHASE 1 - ERDs & PLANNING
(Estimated time: 45 minutes)

- What will your data look like? What entities will you need, and what attributes will they have on them?
- How will these entities be related to each other, if at all?
- Draw your ERDs out either on the board or in an app like [LucidChart](https://www.lucidchart.com/) or [Gliffy](https://www.gliffy.com/).
- Decide which technologies you'll be using. For this app specifically, you'll need to decide if you want to use what your user authentication strategy will be:
    + Build from scratch?
    + Use [has_secure_password](https://quickleft.com/blog/rails-tip-validating-users-with-has_secure_password/) to take some of the boilerplate code out for you?
    + Use a low level gem like [Sorcery](https://github.com/NoamB/sorcery)?
    + Use a high level gem like [Devise](https://github.com/plataformatec/devise)?

### PHASE 2 - PLANNING ROUTES & VIEWS
(Estimated time: 30 minutes)

- How many "pages" will your app have, and what will the user flow be for accessing them?
- Divide the different actions of your application into `get`, `post`, `put` and `delete` routes as necessary and think about the paths you will create
- How many routes will you need, and how many of those routes will need views?
- Include some wireframes if you feel like it!

### PHASE 3 - `rails new` and SET UP A GIT REPO
(Estimated time: 20 minutes)

- Set up the base files you'll need with the `rails new` command
- Initialize a new git repo for the project
- Create a repo on Github and sync your local filebase with the Github repo

### PHASE 4 - SET UP YOUR SCHEMA && MODELS
(Estimated time: 45 minutes)

- Set up a database with the `rake db:create` command.
- Create your migration files (using `rails g migration NameOfMigration`) with the appropriate column names, data types, and constraints.
    + Think about your associations - what columns will you need to tie jobs to users? Where will those columns go?
    + If you're using a gem for user authentication, check its documentation first to see if they create a `User` migration for you, so you don't have to.
- Run `rake db:migrate` to actually execute your schema changes.
- Create your model files. Be sure to also create relevant [associations](http://guides.rubyonrails.org/association_basics.html) between the models.
    + Also consider adding [validations](http://guides.rubyonrails.org/active_record_validations.html) to your models to ensure your data is correctly formatted.

**OPTIONAL**: 'Seed' your database with some default values to test with. You'll want to write code in `seeds.rb` to populate the database, then run `rake db:seed` to execute those instructions.

**TIP**: Use `rails console` to check if your models and seed data are working after you set them up.

### PHASE 5 - SET UP YOUR ROUTES
(Estimated time: 30 minutes)

- In the `/config/routes.rb` file, set up the routes you'll need for each of your entities. Think about the following:
    + What routes will you need to view job listings?
    + What routes will you need to create job listings?
    + What routes will you need to sign up, log in, and log out? Does your user authentication gem have these routes built in?

### PHASE 6 - SET UP AUTHENTICATION
(Estimated time: 60 minutes)

- Depending on your user authentication strategy, this process will be different. But here are some things to consider:
    + How many routes will you need? How many views? If you're using a gem, are these created for you, or do you need to do it?
    + What will the forms look like to sign up and log in? Do you need to create these on your own?
    + How will you prevent non-authenticated users from accessing restricted content?
    + How will you show logged in users only the content they own/should be able to see? Do you have access to a `current_user` variable? 

### PHASE 7 - SHOW THE JOB LISTINGS
(Estimated time: 40 minutes)

- Work on displaying job listings first, as this is an easier thing to do than creating brand new job listings.
- How many routes will you need to display the jobs? Remember, we want to display **all** the photos on the homepage, and only each user's photos at '/users/:id'.
- What database queries will we need to find the correct data?
- Once we get the data, how can we pass it to the view? In the view, how can we display all the results one by one?

### PHASE 8 - BOOKMARK JOB LISTINGS
(Estimated time: 60 minutes)

- What information will you need to collect in your form?
    + Try using the Rails [form helpers](http://guides.rubyonrails.org/form_helpers.html) to format your forms correctly and protect them from CSRF attacks.
- How will you process the form data on the backend to create a new photo?
    + What will you do in the event of an error when saving a job listing? How will you display the error to the user?