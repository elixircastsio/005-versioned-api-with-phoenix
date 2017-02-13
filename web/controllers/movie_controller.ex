defmodule Teacher.MovieController do
  use Teacher.Web, :controller

  alias Teacher.Movie

  def index(conn, _params) do
    movies = Repo.all(Movie)
    render(conn, "index.html", movies: movies)
  end

  def new(conn, _params) do
    changeset = Movie.changeset(%Movie{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"movie" => movie_params}) do
    changeset = Movie.changeset(%Movie{}, movie_params)

    case Repo.insert(changeset) do
      {:ok, _movie} ->
        conn
        |> put_flash(:info, "Movie created successfully.")
        |> redirect(to: movie_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    movie = Repo.get!(Movie, id)
    render(conn, "show.html", movie: movie)
  end

  def edit(conn, %{"id" => id}) do
    movie = Repo.get!(Movie, id)
    changeset = Movie.changeset(movie)
    render(conn, "edit.html", movie: movie, changeset: changeset)
  end

  def update(conn, %{"id" => id, "movie" => movie_params}) do
    movie = Repo.get!(Movie, id)
    changeset = Movie.changeset(movie, movie_params)

    case Repo.update(changeset) do
      {:ok, movie} ->
        conn
        |> put_flash(:info, "Movie updated successfully.")
        |> redirect(to: movie_path(conn, :show, movie))
      {:error, changeset} ->
        render(conn, "edit.html", movie: movie, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    movie = Repo.get!(Movie, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(movie)

    conn
    |> put_flash(:info, "Movie deleted successfully.")
    |> redirect(to: movie_path(conn, :index))
  end
end
