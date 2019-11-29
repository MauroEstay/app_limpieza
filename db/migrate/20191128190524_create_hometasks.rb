class CreateHometasks < ActiveRecord::Migration[5.1]
  def change
    create_table :hometasks do |t|
      t.boolean :done, default: false
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.references :home, foreign_key: true

      t.timestamps
    end
  end
end
