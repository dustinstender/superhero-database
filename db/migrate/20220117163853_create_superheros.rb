class CreateSuperheros < ActiveRecord::Migration[6.1]
  def change
    create_table :superheros do |t|
      t.string :name
      t.integer :intelligence

      t.timestamps
    end
  end
end
