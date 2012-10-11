class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.date :fi_prestamo
      t.date :ff_prestamo
      t.date :fechadevolucion
      t.references :cliente
      t.references :libro

      t.timestamps
    end
    add_index :prestamos, :cliente_id
    add_index :prestamos, :libro_id
  end
end
