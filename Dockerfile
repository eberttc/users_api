FROM hexpm/elixir:1.13.4-erlang-24.3.4.1-alpine-3.16.0 AS build

ARG MIX_ENV=dev
ARG SECRET_KEY_BASE
# install build dependencies
RUN apk add --update git build-base curl

ENV MIX_ENV=$MIX_ENV
ENV SECRET_KEY_BASE=$SECRET_KEY_BASE

RUN mix local.hex --force
RUN mix local.rebar --force

# install mix dependencies
RUN apk add --no-cache openssh-client git
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts
  
ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY . .
COPY config $APP_HOME/config
ADD mix.exs mix.lock ./

RUN --mount=type=ssh MIX_ENV=dev mix deps.get --only $MIX_ENV
RUN mix deps.compile
RUN MIX_ENV=${MIX_ENV} mix release

CMD ["mix", "phx.server"]