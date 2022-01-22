[Ir para a versão brasileira](./README.md)
# (EN) Simple blog with Ruby on Rails

This is an OpenSource project from a blog written in Ruby on Rails.

It was created for learning purposes.

Feel free to download and change it as you see fit.

## Stack

- Rails 7.0.1
- SQLite3
- Bootstrap (CDN)

## How to use it?

Basically it is a system for publishing articles, being able to edit and remove them, in addition to adding/removing comments for each article.

Remembering that you can only edit and remove articles and comments if you are **authenticated**.

## Building application

Ok, so first you must have:

1. SQLite3 installed.

2. Ruby >= 2.7.1 installed (minimum required for Rails 7.0.1, version we're working with).

4. And to *bundle* it with command:

```
bundle install
```
As soon as you have everything done you can follow.

### 2. Manually building everything

If you want to rock and create your dev environment and data, it's possible to go through the usual way

1. Run migrations
```
rails db:migrate
```

2. Start the server
```
rails s
```

## Authentication

I used the Rails http_basic_authenticate_with method, which allows access to the requested action if that method allows it.

To use the authentication system, i specified it at the top of **ArticlesController** in ```app/controllers/articles_controller.rb```. In case, i want the user to be authenticated on every action except index and show.

I also want to allow only authenticated users to delete comments, so in the **CommentsController** in ```app/controllers/comments_controller.rb```.

In both cases you determine the name and password for authentication. Name and password are defined by "admin" and "123", respectively.