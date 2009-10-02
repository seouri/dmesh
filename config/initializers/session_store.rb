# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dmesh_session',
  :secret      => 'ee2911e820ab47c6ba1a8f8525aa412a93c63822fd8ee9f7ba1799865cdcb3396bb640b54e5fe7646a35bbaee227ebc94a77061d07b0cc57045061c050a096c3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
