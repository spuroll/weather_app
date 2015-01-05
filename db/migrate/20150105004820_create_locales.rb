class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :ip
      t.string :zip

      t.timestamps null: false
    end
  end
end
