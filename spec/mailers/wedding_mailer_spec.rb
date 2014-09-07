require "rails_helper"

RSpec.describe WeddingMailer, :type => :mailer do
  describe "rsvp" do
    let(:mail) { WeddingMailer.rsvp }

    it "renders the headers" do
      expect(mail.subject).to eq("Rsvp")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
