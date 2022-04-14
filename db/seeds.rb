# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Capistrano-rails-collection cammands
#cap production rails:rake:log:clear
#cap production rails:rake:tmp:clear
#cap production rails:rake:db:drop
#cap production rails:rake:db:reset
#cap production rails:rake:db:setup
#cap production rails:rake:db:seed
#cap production rails:rake:db:migrate
#cap production rails:rake:db:rollback

unless Role.all.present?
    roles = Role.create(
        [
            {name: "Superuser"},
            {name: "Administrateur"},
            {name: "Assistant"},
            {name: "Manager"},
            {name: "Membre"},
            {name: "Restaurant"},
            
            
        ])
else
    roles = Role.all

end


#User
unless User.all.present?
users = User.create([
    {
        first_name: "Amos", 
        last_name: "DEMBELE",
        role_id: Role.find_by(name: "Superuser").id
    },
    {
        first_name: "Admin", 
        last_name: "Admin",
        role_id: Role.find_by(name: "Administrateur").id
    },
    {
        first_name: "Momo", 
        last_name: "THIAM",
        role_id: Role.find_by(name: "Superuser").id
    }
])
else
    users = User.all
end


# Account
unless Account.all.present?

    accounts = Account.create([
        {accountable: users[0], login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88"},
        {accountable: users[2], login: "thiam",  email: "thiam@gmail.com",  password: "Root@2022", password_confirmation: "Root@2022"}
        
    
    ])

    
    #User.create(, login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "superuser").id)
    #users = User.all
else

     accounts = Account.all
end


#Cities
unless City.all.present?
    cities = City.create([
        {
            name: "Bamako", 
            account_id: accounts.first.id,   
        },
        {
            name: "Kayes", 
            account_id: accounts.first.id,   
        },
        {
            name: "Koulikoro", 
            account_id: accounts.first.id,   
        },
        {
            name: "Sikasso", 
            account_id: accounts.first.id,   
        },
        {
            name: "Ségou", 
            account_id: accounts.first.id,   
        },
        {
            name: "Mopti", 
            account_id: accounts.first.id,   
        },
        {
            name: "Tombouctou", 
            account_id: accounts.first.id,   
        },
        {
            name: "Gao", 
            account_id: accounts.first.id,   
        }
    
    ])
else  
    cities = City.all

end












