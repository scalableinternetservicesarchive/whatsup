class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :city
      t.decimal :latitude,  :precision => 20, :scale => 10
      t.decimal :longitude, :precision => 20, :scale => 10
      t.timestamp :time
      t.text :description

      t.timestamps null: false
    end
  end
end
