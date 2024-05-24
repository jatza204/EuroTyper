class CreateBets < ActiveRecord::Migration[6.1]
  def change
    unless table_exists? :bets
      create_table :bets do |t|
        t.references :user, null: false, foreign_key: true
        t.references :match, null: false, foreign_key: true
        t.datetime :bet_date, null: false
        t.string :bet_type, null: false
        t.decimal :bet_amount, null: false, precision: 10, scale: 2
        t.decimal :odds, null: false, precision: 5, scale: 2

        t.timestamps
      end
    end
  end
end
