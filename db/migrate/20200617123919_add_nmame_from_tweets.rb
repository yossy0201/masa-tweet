class AddNmameFromTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :neme, :string
  end
end
