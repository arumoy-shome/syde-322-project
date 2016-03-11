Rails.application.config.middleware.use OmniAuth::Builder do
  provider(:facebook, "429681403823135", "cbb85a6ea8b0ceb22167d03e89a6478f",
           scope: "public_profile,email", image_size: "square")
  provider(:google_oauth2, "994748866932-7kjt7fhipagmcnu65i1otnl4fmvhdp9s" \
           ".apps.googleusercontent.com", "VhbOQPFuYJGIEzZ5dsbGFzD2", scope:
           "email, profile, https://www.googleapis.com/auth/calendar",
           redirect_uri: "http://tutorify.me:3000/auth/google_oauth2/callback",
           skip_jwt: true, provider_ignores_state: true)
  provider(:twitter, "", "", image_size: "normal")
end
