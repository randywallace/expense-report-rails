class Timechart < ActiveRecord::Base
  belongs_to :employer
  attr_accessible :description, :start_time, :stop_time, :employer_id
  validates :description, :stop_time, :presence => true
  validates :start_time, :presence => true, :if => :val_start_time?
  def val_start_time?
    logger.info self.start_time.to_s
    logger.info "TESTTESTTEST"
    self.start_time < self.stop_time
  end
end
