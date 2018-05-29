Recaptcha.configure do |config|
  config.site_key  = ENV['GOOGLE_reCAPTCHA_SITE_KEY']
  config.secret_key = ENV['GOOGLE_reCAPTCHA_SECRET_KEY']
end
