class CreateFruits < ActiveRecord::Migration[5.0]
  def change
    create_table :fruits do |t|
      t.references :seed, foreign_key: true
      t.string :label
    end
  end
end
