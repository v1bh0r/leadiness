class CreateLeadStatuses < ActiveRecord::Migration
  def change
    create_table :lead_statuses do |t|
      t.string :name
    end

    add_index :lead_statuses, :name
    add_column :leads, :lead_status_id, :integer, :default => 1
    add_index :leads, :lead_status_id
    remove_column :leads, :status
  end
end
