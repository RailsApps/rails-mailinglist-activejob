class Visitor < ApplicationRecord
  validates_presence_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  after_create :subscribe

  def subscribe
    MailingListSignupJob.perform_later(self)
  end

end
