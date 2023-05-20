# UsersApi

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

=======

## Github workflow CI.yml

Generating an SSH key pair
The first step in using SSH authorization with GitHub is to generate your own key pair.

> $ ssh-keygen -o -t rsa -C "test@email.com" -f keys

(The -o option was added in 2014; if this command fails for you, just remove the -o and try > again)

When asked where to save the new key, hit enter to accept the default location.

Generating public/private rsa key pair.
> Enter file in which to save the key (/Users/username/.ssh/id_rsa):
> You will then be asked to provide an optional passphrase. This can be used to make your key > even more secure, but for this lesson you can skip it by hitting enter twice.

> Enter passphrase (empty for no passphrase):
> Enter same passphrase again:

