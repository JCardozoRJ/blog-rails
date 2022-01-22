[Go to english version](./README_en.md)
# (PT/BR) Blog simples com Ruby on Rails

Este é um projeto OpenSource de um blog escrito em Ruby on Rails.

Ele foi criado para fins de aprendizado.

Sinta-se à vontade para fazer o download e alterá-lo como achar melhor.

## Stack

- Rails 7.0.1
- SQLite3
- Bootstrap (CDN)

## Como usá-lo?

Basicamente é um sistema de publicação de artigos, podendo editá-los e removê-los, além de adicionar/remover comentários para cada artigo.

Lembrando que você só poderá editar e remover artigos e comentários se estiver **autenticado**.

## Construindo a aplicação

Ok, então primeiro você deve ter:

1. SQLite3 instalado.

2. Ruby >= 2.7.1 instalado (mínimo necessário para Rails 7.0.1, versão com a qual estamos trabalhando).

4. E para *instalá-lo* com o comando:

```
bundle install
```
Assim que você tiver tudo feito, você pode seguir.

### 2. Construindo tudo manualmente

Se você quiser agitar e criar seu ambiente de desenvolvimento e dados, é possível seguir o caminho usual:

1. Rode as migrações
```
rails db:migrate
```

2. Inicie o servidor
```
rails s
```

## Autenticação

Eu usei o método *http_basic_authenticate_with* do Rails, que permite o acesso à ação solicitada se esse método permitir.

Para usar o sistema de autenticação, eu o especifiquei no topo de **ArticlesController** em ```app/controllers/articles_controller.rb```. No caso, quero que o usuário seja autenticado em todas as ações, exceto index e show.

Eu também quero permitir que apenas usuários autenticados excluam comentários, então no **CommentsController** em ```app/controllers/comments_controller.rb```.

Em ambos os casos, você determina o nome e a senha para autenticação. Nome e senha são definidos por "admin" e "123", respectivamente.


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

1. Create databases
```
rails db:create
```

2. Run migrations
```
rails db:migrate
```

3. Start the server
```
rails s
```

## Authentication

I used the Rails http_basic_authenticate_with method, which allows access to the requested action if that method allows it.

To use the authentication system, i specified it at the top of **ArticlesController** in ```app/controllers/articles_controller.rb```. In case, i want the user to be authenticated on every action except index and show.

I also want to allow only authenticated users to delete comments, so in the **CommentsController** in ```app/controllers/comments_controller.rb```.

In both cases you determine the name and password for authentication. Name and password are defined by "admin" and "123", respectively.