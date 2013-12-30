class ExhibitsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @exhibits = Exhibit.all
  end

  def show
    @exhibit = Exhibit.find(params[:id])
  end

  def new
    authorize! :read, @user, :message => 'Not authorized as an administrator.'
    @exhibit = Exhibit.new
  end

  def edit
    @exhibit = Exhibit.find(params[:id])
  end

  def create
    @exhibit = Exhibit.new(params[:exhibit])
  end

  def update
    @exhibit = Exhibit.find(params[:id])
  end

  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    @exhibit = Exhibit.find(params[:id])
    @exhibit.destroy
  end
end
