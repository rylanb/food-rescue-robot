class FoodType < ActiveRecord::Base
  attr_accessible :name, :region_id
  has_many :schedules, :through => :schedule_parts
  has_many :schedule_parts
  has_many :log_parts
  has_many :logs, :through => :log_parts
  belongs_to :region
  default_scope { where(active:true) }

  def self.regional(region_id)
    where(:region_id=>region_id)
  end
end
