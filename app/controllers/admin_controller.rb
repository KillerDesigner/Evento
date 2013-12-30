class AdminController < ApplicationController
  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
    @attendees = Attendee.all
    @exhibits = Exhibit.all
    @speakers = Speaker.all
    @presentations = Presentation.all
    @sponsors = Sponsor.all
  end
end
