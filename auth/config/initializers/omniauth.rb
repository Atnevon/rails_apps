OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'], {:client_options => {:ssl => {:ca_file => 'C:\Users\arlic\Desktop\ca-bundle.crt'}}}

end