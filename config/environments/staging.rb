Intervac::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  # Should be false in real production
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

  # Defaults to Rails.root.join("public/assets")
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
  config.log_level = :debug

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  config.assets.initialize_on_precompile = false

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  config.assets.precompile += ['dashboard.js', 'dashboard.css', 'ie-fallback.css', 'prints.css', 'registration.css', 'mobile.css', 'mobile.js', 'search.js', 'management.js', 'management.css']

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # staging.intervac.com does not exist. It needs to be created.
  config.action_mailer.default_url_options = { :host => 'staging.intervac.com' }
  config.action_mailer.asset_host = '//staging.intervac.com'

  config.main_domain = 'staging.intervac.com'
  config.external_domain = 'staging.intervac.com'

  # Mailgun settings
  config.action_mailer.mailgun_settings = {
    :api_key  => 'key-6g7mg0i1fjr4xusn9x6vi6xr5fozqlg2',
    :api_host => 'api.mailgun.net/v2/intervac-staging.mailgun.org/messages'
  }

  config.verify_message_key = 'key-6g7mg0i1fjr4xusn9x6vi6xr5fozqlg2'
  config.conversation_email = 'conversation@intervac-staging.mailgun.org'

  # Boarding account - Live payment
  config.after_initialize do
    ActiveMerchant::Billing::Base.mode = :production
  end

  config.paypal_options = {
    :login => "intervac-paypal_api1.modondo.com",
    :password => "HBACGENHT525NY5F",
    :signature => "AwJuaV47rqGAULAXK1Cwfz8V9TtNAKeaZuO34IEvRMk6wz2CtqcUOtma",
    :default_currency => "EUR",
    :merchant => "Intervac Paypal Express",
    :subject => 'iihes@intervac.nl',
    :charset => 'utf-8'
  }

  # Sage Pay Test Account - At the moment connected to Brian Hayes. If further agents should use SagePay, a re-factor has to be made to handle the payment settings
  config.sage_pay_vendor_name = 'bdw3b313473'
  config.sage_pay_crypt_secret = 'VxMc59DAE6qvnMa3'

  # Urban Airship auth keys development
  config.urban_airship_app_key = '1wj906wvSLGKDEP4eOShIg'
  config.urban_airship_master_secret = 'OwHMpvWVTAy35QaCHcH-mQ'

  # Parse Push Notifications Keys
  config.parse_application_id = 'egew8FZlL5UxmCg7gWHuRlDOdFC1ZBjwgcdAHBYS'
  config.parse_rest_api_key = 'whuIDO9T8BoX3zZ4zNpskByhNZGsqdzyXZ4jHCmZ'

end
