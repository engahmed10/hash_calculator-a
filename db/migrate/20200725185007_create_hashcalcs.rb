class CreateHashcalcs < ActiveRecord::Migration[6.0]
  def change
    create_table :hashcalcs do |t|
      t.string :name

      t.timestamps
    end
  end
end
