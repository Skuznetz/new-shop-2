class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|

    	 t.text :body
      t.integer :item_id
      t.integer :imageable_id
      t.string  :imageable_type

      t.timestamps
    end
  end
end
