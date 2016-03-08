Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '429681403823135', 'cbb85a6ea8b0ceb22167d03e89a6478f',
    scope: 'public_profile,email', image_size: 'square'
end
