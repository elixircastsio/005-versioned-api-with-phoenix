defmodule Teacher.Api.V1.MovieController do
  use Teacher.Web, :controller

  alias Teacher.Movie

  def index(conn, _params) do
    movies = Repo.all(Movie)
    render(conn, "index.json", movies: movies)
  end

  def show(conn, %{"id" => id}) do
    movie = Repo.get!(Movie, id)
    render(conn, "show.json", movie: movie)
  end

end 
