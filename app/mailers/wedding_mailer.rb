class WeddingMailer < ActionMailer::Base
  default from: "sawa-jimmy-wedding@#{ENV['mailgun_domain']}"

  def rsvp(content)
    @greeting = "Hi"
    @content = content.to_s
    mail to: "contact_us@#{ENV['mailgun_domain']}"
  end
end
