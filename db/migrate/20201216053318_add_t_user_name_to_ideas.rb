class AddTUserNameToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :user_name, :string
  end
end
