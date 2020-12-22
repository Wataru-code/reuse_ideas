class CreateIdeaTagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :idea_tag_relations do |t|
      t.references :idea, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
