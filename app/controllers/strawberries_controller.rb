class StrawberriesController < ApplicationController
  def index
    @strawberries = Strawberry.all
  end

  def show
    @strawberry = Strawberry.find(params[:id])
  end

  def new
    @strawberry = Strawberry.new
  end

  def create
    @strawberry = Strawberry.new(params[:strawberry])
    if @strawberry.save
      redirect_to @strawberry, :notice => "Successfully created strawberry."
    else
      render :action => 'new'
    end
  end

  def edit
    @strawberry = Strawberry.find(params[:id])
  end

  def update
    @strawberry = Strawberry.find(params[:id])
    if @strawberry.update_attributes(params[:strawberry])
      redirect_to @strawberry, :notice  => "Successfully updated strawberry."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @strawberry = Strawberry.find(params[:id])
    @strawberry.destroy
    redirect_to strawberries_url, :notice => "Strawberry eaten!"
  end
end
