class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item
      t.string :link
      t.string :cost

      t.timestamps
    end
  end
end
