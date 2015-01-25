class User < ActiveRecord::Base
  include RatingAverage

  has_secure_password

  validates :username, uniqueness: true,
                       length: { minimum: 3, maximum: 15 }

  validates :password, length: { minimum: 4 },
                       format: { with: /[A-Z]/ },
                       format: { with: /[0-9]/ }

  has_many :ratings
  has_many :beers, through: :ratings
  has_many :memberships, dependent: :destroy
end
