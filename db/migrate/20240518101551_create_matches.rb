class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.datetime :match_date
      t.string :home_team
      t.string :away_team
      t.integer :goals_home
      t.integer :goals_away
      t.string :result

      t.timestamps
    end
  end
end
