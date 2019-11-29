class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :photo

      t.timestamps
    end
  end
end
