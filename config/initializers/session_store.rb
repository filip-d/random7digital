# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RandomAlbumRecommender_session',
  :secret      => '49732b0cca3de8093b4c276c4f1b1e9a6648ad4cceb1e67d43bb689670cdf1e53d822518595278620955eea29b917cfadba9e5b15004c395ae1de094158b5d72'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
