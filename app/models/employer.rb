class Employer < ActiveRecord::Base
  attr_accessible :currently_employed, :date_started, :name, :hourly_rate
  has_many :timecharts
  validates :hourly_rate, :numericality => true
  validates :name, :presence => true
end
