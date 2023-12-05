class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.string :language_name
      t.boolean :active
      t.string :sort_priority

      t.timestamps
    end
  end
end
