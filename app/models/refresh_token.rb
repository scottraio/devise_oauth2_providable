require 'expirable_token'

class RefreshToken
  include Mongoid::Document
  include ExpirableToken
  self.default_lifetime = 1.month
  embeds_many :access_tokens
end
