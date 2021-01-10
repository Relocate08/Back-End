class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :yelp_business_id
      t.string :business_name

      t.timestamps
    end
  end
end
