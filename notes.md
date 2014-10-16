"Clone a popular website."

What do I need to do right from the beginning?

* Choose a website like these to clone:
  * Reddit
  * Hacker News
  * Imgur
  * Bit.ly
  * Quora / Stack Overflow
  * etc.
* Come up with user stories and use cases.
  * Determine what you want your app to *do*.
* Plan out Models and resources.
* Determine how all those Models interact.
  * "Users have many Posts, Posts have many Comments..."
* Make a little wireframe/example page of what it will look like.
* **ORGANIZE!**

# Hacker News

Hacker News is a website where links to news articles and blog posts are, well, posted. Each post consists of a link to an article (URL) with source, a title, and a link to a discussion. Alternatively, the URL field can be left blank to submit a "question" for discussion.

* User clicks submit post.
* A Post form appears.
* The User inputs a title and a URL.
* The User hits submit.
* The Post is added to the news feed.
* The Post shows up at the top.
* The User can subsequently Comment on the post.
* The User can also up or down vote a Comment.

A **User** can submit a **Post** and leave a **Comment** on the **Post**.

Models:

  * User
    * use Devise for this!
    * has a name
    * has many Posts
    * has many Comments
  * Post
    * has a title
    * has a link
    * has text(?)
    * has many Comments
  * Comment
    * has text
    * has points
    * can also have its own Comments...recursive!

Focus on getting the resources/database/API down first, and THEN worry about the views. Get a command-line version working first.

# Testing

I'm going to try and do some testing with RSpec/Factory Girl/Capybara/etc.

I need to write tests for each of my Models.

User

  - has a valid factory
  - is invalid without an email
  - is invalid without a username
  - is invalid without a password
  - is invalid without a password confirmation
  - is invalid without a matching password and password confirmation

Post

  - has a valid factory
  - is invalid without a link
  - is invalid without a title
  - belongs to a User

Comment

  - has a valid factory
  - is invalid without text
  - is invalid without a points counter
  - belongs to a User