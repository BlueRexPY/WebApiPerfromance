defmodule ElixirPhoenixApi.ErrorView do
  def render("404.json", _assigns) do
    %{error: "Not found"}
  end

  def render("500.json", _assigns) do
    %{error: "Internal server error"}
  end

  def template_not_found(_template, _assigns) do
    %{error: "Not found"}
  end
end
