defmodule Teacher.MovieControllerTest do
  use Teacher.ConnCase

  alias Teacher.Movie
  @valid_attrs %{summary: "some content", title: "some content", year: "some content"}
  @invalid_attrs %{}

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, movie_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing movies"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, movie_path(conn, :new)
    assert html_response(conn, 200) =~ "New movie"
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, movie_path(conn, :create), movie: @valid_attrs
    assert redirected_to(conn) == movie_path(conn, :index)
    assert Repo.get_by(Movie, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, movie_path(conn, :create), movie: @invalid_attrs
    assert html_response(conn, 200) =~ "New movie"
  end

  test "shows chosen resource", %{conn: conn} do
    movie = Repo.insert! %Movie{}
    conn = get conn, movie_path(conn, :show, movie)
    assert html_response(conn, 200) =~ "Show movie"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, movie_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource", %{conn: conn} do
    movie = Repo.insert! %Movie{}
    conn = get conn, movie_path(conn, :edit, movie)
    assert html_response(conn, 200) =~ "Edit movie"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    movie = Repo.insert! %Movie{}
    conn = put conn, movie_path(conn, :update, movie), movie: @valid_attrs
    assert redirected_to(conn) == movie_path(conn, :show, movie)
    assert Repo.get_by(Movie, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    movie = Repo.insert! %Movie{}
    conn = put conn, movie_path(conn, :update, movie), movie: @invalid_attrs
    assert html_response(conn, 200) =~ "Edit movie"
  end

  test "deletes chosen resource", %{conn: conn} do
    movie = Repo.insert! %Movie{}
    conn = delete conn, movie_path(conn, :delete, movie)
    assert redirected_to(conn) == movie_path(conn, :index)
    refute Repo.get(Movie, movie.id)
  end
end
