class AddUserToEmailSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_column :email_submissions, :user_id, :integer
    add_index :email_submissions, :user_id
  end
end
