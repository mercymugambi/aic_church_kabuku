# db/seeds.rb
# Create a super admin user
super_admin = User.find_or_initialize_by(email: 'admin@aickabuku.com')
super_admin.password = 'admin@kabukuaic'
super_admin.super_admin = true
super_admin.save!

# position = LeadershipPosition.create(
#   position_name: 'Top-level Administrator',
#   description: 'The highest-level administrator',
#   position_code: 'Super_Admin'
# )
# # Save the position
# position.save!


