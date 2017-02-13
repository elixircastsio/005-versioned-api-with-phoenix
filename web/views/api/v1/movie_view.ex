defmodule Teacher.Api.V1.MovieView do
  use Teacher.Web, :view

  def render("index.json", %{movies: movies}) do
    render_many(movies, Teacher.Api.V1.MovieView, "movie.json")
  end

  def render("show.json", %{movie: movie}) do
    render_one(movie, Teacher.Api.V1.MovieView, "movie.json")
  end

  def render("movie.json", %{movie: movie}) do
    %{title: movie.title,
      year: movie.year}
  end

end
