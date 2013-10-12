Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '568118486570040', 'aa1fd631aa1c840b394348303d961961',
           :scope => 'friends_likes,', :display => 'popup'
end