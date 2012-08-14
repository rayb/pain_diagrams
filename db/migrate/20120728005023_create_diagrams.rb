class CreateDiagrams < ActiveRecord::Migration
  def change
    create_table :diagrams do |t|
      t.string :file
      t.integer :subject_id

      t.timestamps
    end
  end
end
