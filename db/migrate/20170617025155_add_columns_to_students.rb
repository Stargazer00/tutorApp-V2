class AddColumnsToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :relation, :string, array: true, default:[]
  	add_index :students, :relation, using: :gin
  end
end
