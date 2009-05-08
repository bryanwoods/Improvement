# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_improvement_session',
  :secret      => '35087af536fb1061f6285f4fc7c37d02dd29f7b57580eacade2fad6b9522eddc8cefd2cb016a8a7f560953ffe4573500cab49b47cff135400326b604371c0732'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
