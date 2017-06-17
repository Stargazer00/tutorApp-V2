class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :contact_name
      t.integer :mobile_no
      t.string :address
      t.string :case_lesson_time
      t.integer :case_fee
      t.string :case_other_info

      t.timestamps
    end
  end
end
