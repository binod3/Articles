class AddEmailcToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :emailc, :string
  end
end
