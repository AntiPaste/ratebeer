class Membership < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :beer_club, dependent: :destroy
end
