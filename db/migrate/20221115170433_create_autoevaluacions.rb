class CreateAutoevaluacions < ActiveRecord::Migration[7.0]
  def change
    create_table :autoevaluacions do |t|
      t.date :date
      t.integer :ci
      t.string :grupo
      t.string :C1E1_primero
      t.string :C1E2_primero
      t.string :C2E1_primero
      t.string :C2E2_primero
      t.string :C3E1_primero
      t.string :C3E2_primero
      t.string :C4E1_primero
      t.string :C4E2_primero
      t.string :C5E1_primero
      t.string :C5E2_primero
      t.string :C6E1_primero
      t.string :C6E2_primero
      t.string :C7E1_primero
      t.string :C7E2_primero
      t.string :C1E1_segundo
      t.string :C1E2_segundo
      t.string :C2E1_segundo
      t.string :C2E2_segundo
      t.string :C3E1_segundo
      t.string :C3E3_segundo
      t.string :C4E1_segundo
      t.string :C4E2_segundo
      t.string :C5E3_segundo
      t.string :C5E4_segundo
      t.string :C6E1_segundo
      t.string :C6E2_segundo
      t.string :C7E3_segundo
      t.string :C7E4_segundo
      t.string :C1E1_tercero
      t.string :C1E3_tercero
      t.string :C2E2_tercero
      t.string :C2E3_tercero
      t.string :C3E4_tercero
      t.string :C3E5_tercero
      t.string :C4E2_tercero
      t.string :C4E3_tercero
      t.string :C5E3_tercero
      t.string :C5E4_tercero
      t.string :C6E2_tercero
      t.string :C6E3_tercero
      t.string :C7E4_tercero
      t.string :C7E5_tercero
      t.timestamps
    end
  end
end
