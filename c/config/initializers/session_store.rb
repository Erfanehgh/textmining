# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_c_session',
  :secret      => 'f4a479becb31f57e393ebf13c383adc8f298d42be0b1624dcc2c343ab65ac4c5f90288819c9fb13136b6ccc5acd6b2a9cf4abc6f24ef6b21bd495edcf050ee71'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
