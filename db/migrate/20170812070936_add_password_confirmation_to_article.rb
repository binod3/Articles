class AddPasswordConfirmationToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :password_confirmation, :string
  end
end
