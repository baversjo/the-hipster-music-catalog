Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FB_APPID'],  ENV['FB_SECRET'],
           :scope => 'friends_likes', :display => 'popup'
end