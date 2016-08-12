class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :Nombre
      t.text :Email
      t.text :Telefono

      t.timestamps
    end
  end
end
