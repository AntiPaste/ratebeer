class Brewery < ActiveRecord::Base
  include RatingAverage

  validates :name, presence: true
  validates :year, :inclusion => { :in => proc { 1042..Date.current.year } }

  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  def print_report
    puts self.name
    puts "established at year #{self.year}"
    puts "number of beers #{self.beers.count}"
  end

  def restart
    self.year = 2015
    puts "changed year to #{self.year}"
  end	
end
