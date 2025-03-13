require 'mysql2'

# Connexion à la base de données en utilisant les variables d'environnement
client = Mysql2::Client.new(
  host: ENV['DATABASE_HOST'], 
  username: ENV['DATABASE_USER'], 
  password: ENV['DATABASE_PASSWORD'], 
  database: ENV['DATABASE_NAME']
)

puts "Connexion réussie à la base de données MySQL!"