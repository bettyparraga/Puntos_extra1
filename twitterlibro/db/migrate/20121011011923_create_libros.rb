class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :titulo
      t.text :comentario

      t.timestamps
    end
  end
end
