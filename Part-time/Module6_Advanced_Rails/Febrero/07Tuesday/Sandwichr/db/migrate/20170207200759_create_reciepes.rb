class CreateReciepes < ActiveRecord::Migration[5.0]
  def change
    create_table :reciepes do |t|
      t.references :ingredient, index: true
      t.references :sandwich, index: true

      t.timestamps
    end
  end
end
