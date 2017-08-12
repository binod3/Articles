class RenameEmailcToEmailConfirmationInArticlesForce < ActiveRecord::Migration[5.1]
  def change
  	
    rename_column :articles, :emailc, :email_confirmation
  end

end
