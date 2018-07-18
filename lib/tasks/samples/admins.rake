namespace :samples do
  task admins: :environment do
    puts 'start create admins'

    Admin.find_or_create_by(email: '1@mg.com') do |admin|
      admin.password = '123123123'
    end

    puts 'finished create admins'
  end
end
