# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
WebSocket::Application.config.secret_key_base = '8d6301361547901684e24464c759af12083708692ac378c816d2664dd235f0cb07aecff851157339eafc75eb71e5faf43fad9312c2e0b5f66a4a68cf42fb3abc'
