# Jjerbook - A Facebook Clone Project

### Developers

- [Jack Perrin](https://github.com/perrinjack)
- [Emanuele Pace](https://github.com/Emanuele-20)
- [Rich Ewin](https://github.com/joshuaabrookuk)
- [Joshua Brook](https://github.com/TimCPB)

You can view a blog of how we made our app [here](https://github.com/Emanuele-20/acebook-rails-template/wiki)

### Technologies

- Programming Language: Ruby, HTML, CSS
- Web Framework: Ruby on Rails
- Testing Framework: Rspec, Capybara
- CI/CD: Travis
- Database: PostgreSQL, TablePlus
- Gems: Rubocop, Simplecov, BCrypt
- Cloud Platform: Heroku

### User Stories

```
As a user
So I can use ‘Acebook’
I would like to be able to sign-up with name, email and password
```
```
As a signed-up user 
So i can use ‘Acebook’
I would like to be able to log-in with email and password
```
```
As a signed-up user
So i can use ‘Acebook’
I would like to be able to make, edit and delete a new post
```
```
As a signed-up user
So i can use ‘Acebook’
I would like to be able to add line breaks into my posts
```
```
As a signed-up user
So i can use ‘Acebook’
I would like to be able to see the time of my posts in a nice time and date format
```
```
As a signed-up user
So i can use ‘Acebook’
I would like to be able to see the time of my posts in a nice time and date format
```
```
As a signed-up user
So i can use ‘Acebook’
I would like to be able to see a list of people i may know
```
```
As a signed-up user
So i can use ‘Acebook’
I would like to be able to add a friend to my friends list
```
```
As a signed-up user
So i can use ‘Acebook’
I would like to only be able to edit my posts, 10 minutes after i have posted it
```

## Project Structure

- As a team we agreed to hold three daily stand-up meetings: 9am, 2pm, 5pm, which included a 2 mins per person round robin.
- We paired daily to complete allocated user stories. We switched pairs on a daily basis. At times, we used a technique called 'mobbing' to come together as a team if a pair was blocked. This worked amazingly well on every occasion!
- We recorded the ongoing status of each user story using a [Trello Borad](https://trello.com/b/vPCTtQTU/jjer-acebook-team-project). This helped when allocating work and identifying each pair's workload.
- We each contributed to a workdoc daily that allowed each member of the team to input ideas, basic pseudocode to attack a problem, and collaborate on project strategy.

## How to run

In your preferred browser, navigate to https://jjer.herokuapp.com

To view the code:

First, clone this repo. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec
> bin/rails server # Start the server at localhost:3000
```
