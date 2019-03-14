class KidsController < ApplicationController
  before_action :set_kid, only: %i[show edit update destroy]

  def index
    @kids = Kid.all
  end

  def show
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      flash[:notice] = "You added #{@kid.name} profile successfully."
      redirect_to kid_path(@kid)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @kid.update(kid_params)
      flash[:notice] = "You updated #{@kid.name} profile successfully."
      redirect_to kid_path(@kid)
    else
      render :show
    end
  end

  def destroy
    @kid.destroy
    flash[:notice] = "You deleted #{@kid.name} profile successfully."
    redirect_to kids_path
  end

  private

  def kid_params
    params.require(:kid).permit(:name, :gender, :born_at)
  end

  def set_kid
    @kid = Kid.find(params[:id])
  end
end
