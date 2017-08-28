class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      
      t.bigint :klass_id,index=true, null:false
      t.bigint :teacher_id, index=true, null:false
      t.string :semester, null:false
      t.integer :year
      t.integer :capacity
      t.boolean :is_open, default: false
      t.timestamps
      
    end
    
    add_foreign_key :registrations, :users, column: :teacher_id, primary_key: :id
    add_foreign_key :registrations, :klasses, column: :klass_id, primary_key: :id
    
    add_index :registrations, [:klass_id, :teacher_id, :semester], unique: true
  end
end
