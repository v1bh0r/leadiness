class Lead < ActiveRecord::Base
  attr_accessible :comments, :email, :first_name, :last_name, :phone, :lead_status, :lead_status_id, :user_id, :company

  belongs_to :user
  belongs_to :lead_status

  validates_presence_of :user, :first_name, :last_name

  def name
    "#{first_name} #{last_name}"
  end
end
