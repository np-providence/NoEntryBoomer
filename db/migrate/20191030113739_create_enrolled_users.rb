class CreateEnrolledUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :enrolled_users do |t|
      t.string :name
      t.integer :userId
      t.string :photoEncoding

      t.timestamps
    end
  end
end
