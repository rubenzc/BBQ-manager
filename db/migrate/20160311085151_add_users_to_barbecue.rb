class AddUsersToBarbecue < ActiveRecord::Migration
  def change
  	create_table :users_barbecues, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :barbecue, index: true
    end
  end
end
