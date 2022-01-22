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