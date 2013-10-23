# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Bronze::Application.config.secret_key_base = 'f81d249a38808cb4a3ed39452c7927bcb0a92f1b027862bc2b31d5f6a5b08d265185dcdc8af9fa06c66b62eafcbf98bef2912f0d9ea8708cf702f7d28605ece4'
