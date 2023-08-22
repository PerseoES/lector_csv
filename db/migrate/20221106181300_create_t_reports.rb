class CreateTReports < ActiveRecord::Migration[7.0]
  def change
    create_table :t_reports do |t|
      t.string :documento
      t.string :alumno
      t.string :grupo
      t.string :tipo
      t.string :período
      t.string :C1E1
      t.string :C1E2
      t.string :C1E3
      t.string :C2E1
      t.string :C2E2
      t.string :C2E3
      t.string :C3E1
      t.string :C3E2
      t.string :C3E3
      t.string :C3E4
      t.string :C3E5
      t.string :C4E1
      t.string :C4E2
      t.string :C4E3
      t.string :C5E1
      t.string :C5E2
      t.string :C5E3
      t.string :C5E4
      t.string :C6E1
      t.string :C6E2
      t.string :C6E3
      t.string :C7E1
      t.string :C7E2
      t.string :C7E3
      t.string :C7E4
      t.string :C7E5
      t.string :promedio_evaluación
      t.timestamps
    end
  end
end
