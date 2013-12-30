class SponsorsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @sponsors = Sponsor.all
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def new
    authorize! :read, @user, :message => 'Not authorized as an administrator.'
    @sponsor = Sponsor.new
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def create
    @sponsor = Sponsor.new(params[:sponsor])
  end

  def update
    @sponsor = Sponsor.find(params[:id])
  end

  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    sponsor = Sponsor.find(params[:id])
    unless sponsor == current_user
      sponsor.destroy
      redirect_to sponsors_path, :notice => "Sponsor deleted."
    else
      redirect_to sponsors_path, :notice => "Can't delete yourself."
    end
  end
end