namespace :samples do
  task users: :environment do
    puts 'start create users'

    User.find_or_create_by(email: 'u1@mg.com') do |user|
      user.username = '1mg'
      user.mobile = '12312312312'
      user.password = '123123123'
      user.confirmed_at = Time.now
    end

    puts 'finished create users'
  end
end