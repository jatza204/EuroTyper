class AddOddsToMatches < ActiveRecord::Migration[7.1]
  def change
    add_column :matches, :odds_1, :decimal
    add_column :matches, :odds_x, :decimal
    add_column :matches, :odds_2, :decimal
  end
end
