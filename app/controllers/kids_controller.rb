class KidsController < ApplicationController
  before_action :set_kid, only: %i[show edit update destroy tracking full_log chart]

  def index
    @kids = policy_scope(Kid)
  end

  def show
  end

  def new
    @kid = Kid.new
    authorize @kid
  end

  def create
    @kid = Kid.new(kid_params)
    @kid.users << current_user
    authorize @kid
    if @kid.save
      flash[:notice] = "You added #{@kid.name} profile successfully."
      redirect_to tracking_kid_path(@kid)
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @kid
    if @kid.update(kid_params)
      flash[:notice] = "You updated #{@kid.name} profile successfully."
      redirect_to tracking_kid_path(@kid)
    else
      render :show
    end
  end

  def destroy
    authorize @kid
    @kid.destroy
    flash[:notice] = "You deleted #{@kid.name} profile successfully."
    redirect_to kids_path
  end

  def tracking
    authorize @kid
    @episodes = policy_scope(Episode).new_from_types
  end

  def full_log
    @episodes = @kid.episodes
  end

  def chart
    @heights = @kid.measurements.where(type: 'Height')
    @weights = @kid.measurements.where(type: 'Weight')
  end

  private

  def kid_params
    params.require(:kid).permit(:name, :gender, :born_at, :photo)
  end

  def set_kid
    if params[:id]
      @kid = Kid.find(params[:id])
    else
      @kid = current_user.kids.first
    end
    authorize @kid
  end
end
