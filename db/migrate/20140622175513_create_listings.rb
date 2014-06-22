class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :hospital, index: true
      t.string :title
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
