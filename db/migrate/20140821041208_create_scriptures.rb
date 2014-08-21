class CreateScriptures < ActiveRecord::Migration
  def change
    create_table :scriptures do |t|
      t.string :chapterverse
      t.text :text
      t.references :topic, index: true

      t.timestamps
    end
  end
end
