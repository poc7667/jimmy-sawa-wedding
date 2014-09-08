class WeddingMailer < ActionMailer::Base
  default from: "sawa-jimmy-wedding@#{ENV['mailgun_domain']}"

  def rsvp(content)
    @greeting = "Hi"
    ["utf8", "authenticity_token", "controller", "action"].each do |key|
      content.delete(key)
    end
    @content = content.dup
    mail to: "contact_us@#{ENV['mailgun_domain']}"
  end
end
