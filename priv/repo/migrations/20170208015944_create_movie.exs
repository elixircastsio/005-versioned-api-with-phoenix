defmodule Teacher.Repo.Migrations.CreateMovie do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string
      add :summary, :text
      add :year, :string

      timestamps()
    end

  end
end
