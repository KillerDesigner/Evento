class AttendeesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find(params[:id])
  end

  def new
    authorize! :read, @user, :message => 'Not authorized as an administrator.'
    @attendee = Attendee.new
  end

  def edit
    @attendee = Attendee.find(params[:id])
  end

  def create
    @attendee = Attendee.new(params[:attendee])
  end

  def update
    @attendee = Attendee.find(params[:id])
  end

  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    @attendee = Attendee.find(params[:id])
    @attendee.destroy
  end
end

