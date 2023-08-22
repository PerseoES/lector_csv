class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :documento
      t.string :alumno
      t.string :grupo
      t.text :competencia
      t.string :período
      t.string :materia
      t.string :nivel
      t.text :descripción
      t.timestamps
    end
  end
end
