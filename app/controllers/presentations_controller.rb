class PresentationsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @presentations = Presentation.all
  end

  def show
    @presentation = Presentation.find(params[:id])
  end

  def new
    authorize! :read, @user, :message => 'Not authorized as an administrator.'
    @presentation = Presentation.new
  end

  def edit
    @presentation = Presentation.find(params[:id])
  end

  def create
    @presentation = Presentation.new(params[:presentation])
  end

  def update
    @presentation = Presentation.find(params[:id])
  end

  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    @presentation = Presentation.find(params[:id])
    @presentation.destroy
  end
end
