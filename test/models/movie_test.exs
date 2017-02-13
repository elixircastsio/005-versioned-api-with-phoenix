defmodule Teacher.MovieTest do
  use Teacher.ModelCase

  alias Teacher.Movie

  @valid_attrs %{summary: "some content", title: "some content", year: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Movie.changeset(%Movie{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Movie.changeset(%Movie{}, @invalid_attrs)
    refute changeset.valid?
  end
end
