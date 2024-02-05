class CreateRefunds < ActiveRecord::Migration[7.1]
  def change
    create_table :refunds do |t|
      t.references :wallet, null: false, foreign_key: true
      t.decimal :value, precision: 10, scale: 2, default: 0.0
      t.datetime :refund_date, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.string :description, null: false
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
