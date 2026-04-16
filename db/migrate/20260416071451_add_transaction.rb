class AddTransaction < ActiveRecord::Migration[7.2]
  def change
    create_table :transaction, force: :cascade do |t|
      t.string 'description', limit: 100,
      t.float, 'amount',
      t.sting, 'category'
      t.string, 'status'
      t.timestamps
    end
  end
end
