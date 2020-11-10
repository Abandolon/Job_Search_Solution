class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :name_eng
      t.string :name_deu

      t.timestamps
    end
  end
end
