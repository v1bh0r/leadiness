# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_role = Role.find_or_create_by_name name: 'admin'
Role.find_or_create_by_name name: 'adviser'
Role.find_or_create_by_name name: 'agent'

User.find_or_create_by_email email:'vibhor.mahajan@gmail.com', password: 'Trantorissecure', password_confirmation: 'Trantorissecure', :role => admin_role

LeadStatus.find_or_create_by_name :name => 'open'