defmodule Hello.Repo.Migrations.CreateProductCategories do
  use Ecto.Migration

  def change do
    #create join table to manage many-to-many relationship between product and catagory
    create table(:product_categories, primary_key: false) do
      add :product_id, references(:products, on_delete: :delete_all)
      add :category_id, references(:categories, on_delete: :delete_all)
    end

    create index(:product_categories, [:product_id])
    create index(:product_categories, [:category_id])
    create unique_index(:product_categories, [:product_id, :category_id])
  end
end
