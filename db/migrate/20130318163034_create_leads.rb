class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :status
      t.text :comments

      t.timestamps
    end

    add_index :leads, :user_id
  end
end
