class AddSecondarticleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :secondarticle, :string
  end
end
