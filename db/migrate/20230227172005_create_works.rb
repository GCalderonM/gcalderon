class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.string :company_name
      t.string :job
      t.string :start_year
      t.string :finish_year

      t.timestamps
    end
  end
end
