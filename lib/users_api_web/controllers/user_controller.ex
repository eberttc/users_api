defmodule UsersApiWeb.UserController do
  @moduledoc """
  manages the logi
  """
  use UsersApiWeb, :controller

  def list(conn, params) do
    json(conn, [%{id: 1, name: "Juan"}, %{id: 2, name: "Jose"}])
  end
end
