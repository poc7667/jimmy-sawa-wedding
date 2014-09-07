class WelcomeController < ApplicationController
  def index
  end
  def rsvp
    WeddingMailer.rsvp(params).deliver
  end
  def reply
  end
end
