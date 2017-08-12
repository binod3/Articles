class AddPhoneToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :phone, :integer
  end
end
