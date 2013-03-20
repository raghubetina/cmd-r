class Mark < ActiveRecord::Base
  attr_accessible :selector, :url, :user_id

  belongs_to :user

  after_save :notify_user_that_mark_changed

  def notify_user_that_mark_changed
    MarkMailer.mark_change(self).deliver
  end
end
