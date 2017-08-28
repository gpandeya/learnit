class CreateKlasses < ActiveRecord::Migration[5.1]
  def change
    create_table :klasses do |t|
      t.string :name , null:false
      t.string  :subject, null:false
      t.integer :level, default: 100
      t.integer :credit, default:1
      
      t.timestamps
      
    end
  end
end
