class SweetsController < ApplicationController
  before_action :fetch_sweet, only: %i[show edit update destroy]

  def index
    @sweets = Sweet.all
  end

  def show; end

  def edit; end

  def update
  return redirect_to @sweet if @sweet.update(sweet_params)
    
	render :edit
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.new(sweet_params)

    return  redirect_to @sweet if @sweet.save
    
    render :new
  end

  def destroy
    @sweet.destroy
    redirect_to sweets_url, status: :see_other
  end

private

  def sweet_params
    params.require(:sweet).
      permit(:name, :description, :origin, :price, :validity)
  end

  def fetch_sweet
    @sweet = Sweet.find(params[:id])
  end
end
