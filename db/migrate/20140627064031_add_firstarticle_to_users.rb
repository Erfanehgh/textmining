class AddFirstarticleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstarticle, :string
  end
end
