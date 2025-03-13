require "mysql2"

# Connexion à la base de données en utilisant les variables d'environnement
client = Mysql2::Client.new(
  host: ENV["DATABASE_HOST"],
  username: ENV["DATABASE_USERNAME"],
  password: ENV["DATABASE_PASSWORD"],
  database: ENV["DATABASE_NAME"],
  port: ENV["DATABASE_PORT"],
  url: ENV["DATABASE_URL"], # Utilise l'URL définie dans les variables d'environnement
)

puts "Connexion réussie à la base de données MySQL!"
