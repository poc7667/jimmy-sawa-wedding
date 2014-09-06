class WeddingMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.wedding_mailer.rsvp.subject
  #
  def rsvp
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
