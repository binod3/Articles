class AddTermsOfServiceToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :terms_of_service, :boolean
  end
end
