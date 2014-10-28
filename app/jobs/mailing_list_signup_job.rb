class MailingListSignupJob < ActiveJob::Base

  def perform(visitor)
    logger.info "signing up #{visitor.email}"
    visitor.subscribe
  end

end
