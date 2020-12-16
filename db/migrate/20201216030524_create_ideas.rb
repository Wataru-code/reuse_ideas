class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :category
      t.text :story
      t.text :trick
      t.text :content

      t.timestamps
    end
  end
end
