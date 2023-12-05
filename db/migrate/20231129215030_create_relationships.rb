class CreateRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :relationships do |t|
      t.string :relationship_type
      t.boolean :active

      t.timestamps
    end
  end
end
