#ligne très importante qui appelle la gem.
require 'twitter'
require 'dotenv'

# n'oublie pas les lignes pour Dotenv ici…
Dotenv.load('.env')

# quelques lignes qui appellent les clés d'API de ton fichier .env

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

#------------------------------------------------------------------------------------
# client.search("@the_hacking_pro", result_type: "recent").take(5).each do |tweet|
# # CA MARCHE !!! tweet.user.screen_name
# # CA MARCHE !!! client.follow(tweet.user)
# # CA MARCHE !!! end

# POUR LIKER UN TWEET VIA RECHERCHE DE HASHTAG
# CA MARCHE !!! tweets = client.search("#bonjour_monde", result_type: "recent").take(5)
# CA MARCHE !!! client.favorite(tweets)

#EXEMPLE 1 ou 2 - extraire 5 noms aleatoire de l'array + envoyer un tweet a chacun
#for i in 1..5
# CA MARCHE !!! journalistes = handle.sample
# CA MARCHE !!! client.update("#bonjour_monde @the_hacking_pro #{journalistes}")
# CA MARCHE !!! end

# Alternative "for i in 1..5" l17
# CA MARCHE !!!  5.times do  #prend 5 journalistes au hasard et leur envoi un message
    # CA MARCHE !!!  journalist = arr.sample
    # CA MARCHE !!!  puts journalist
    # CA MARCHE !!!  client.update("Hello les médias #bonjour_monde #{journalist} ")
# end

#POUR ENVOYER UN TWEET
# CA MARCHE !!! thomas = "@Katcampbell13"
# CA MARCHE !!! client.update("Il va bien mon cher #{thomas} #pas_mal_la_pharyngite #cherlopération?")

# instructions de depart / ligne qui permet de tweeter sur ton compte
# instructions de depart / client.update("Mon premier tweet en Ruby from sampc !!!!")

#search(query, options = {})