class ChangePhoneTypeInArticles < ActiveRecord::Migration[5.1]
  def change

  	change_column :articles, :phone, :bigint
  end
end
