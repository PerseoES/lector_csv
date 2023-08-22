class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :documento, unique: true
      t.string :alumno
      t.string :grupo

      t.timestamps
    end
  end
end
