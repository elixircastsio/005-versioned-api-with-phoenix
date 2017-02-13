defmodule Teacher.Movie do
  use Teacher.Web, :model

  schema "movies" do
    field :title, :string
    field :summary, :string
    field :year, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :summary, :year])
    |> validate_required([:title, :summary, :year])
  end
end
