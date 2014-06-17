class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.string :telefono
      t.string :tipo

      t.timestamps
    end
  end
end
