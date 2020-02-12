class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.string :title
      t.string :favicon

      t.timestamps
    end
  end
end
