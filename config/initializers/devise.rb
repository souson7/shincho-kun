Devise.setup do |config|
  config.mailer_sender = "please-change-me@example.com"

  require "devise/orm/active_record"

  # Ensure Turbo works nicely with Devise on Rails 7+
  config.navigational_formats = ["*/*", :html, :turbo_stream]

  # Uncomment and customize as needed:
  # config.parent_controller = "DeviseController"
  # config.scoped_views = false
  # config.sign_out_via = :delete
end


