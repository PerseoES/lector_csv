class CreateCants < ActiveRecord::Migration[7.0]
  def change
    create_table :cants do |t|
      t.integer :ci
      t.integer :C1E1
      t.integer :C1E2
      t.integer :C1E3
      t.integer :C2E1
      t.integer :C2E2
      t.integer :C2E3
      t.integer :C3E1
      t.integer :C3E2
      t.integer :C3E3
      t.integer :C3E4
      t.integer :C3E5
      t.integer :C4E1
      t.integer :C4E2
      t.integer :C4E3
      t.integer :C5E1
      t.integer :C5E2
      t.integer :C5E3
      t.integer :C5E4
      t.integer :C6E1
      t.integer :C6E2
      t.integer :C6E3
      t.integer :C7E1
      t.integer :C7E2
      t.integer :C7E3
      t.integer :C7E4
      t.integer :C7E5
      t.timestamps
    end
  end
end
