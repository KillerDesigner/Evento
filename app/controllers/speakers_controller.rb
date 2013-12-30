class SpeakersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @speakers = Speaker.all
  end

  def show
    @speaker = Speaker.find(params[:id])
  end

  def new
    authorize! :read, @user, :message => 'Not authorized as an administrator.'
    @speaker = Speaker.new
  end

  def edit
    @speaker = Speaker.find(params[:id])
  end

  def create
    @speaker = Speaker.new(params[:speaker])
  end

  def update
    @speaker = Speaker.find(params[:id])
  end

  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    @speaker = Speaker.find(params[:id])
    @speaker.destroy
  end
end
