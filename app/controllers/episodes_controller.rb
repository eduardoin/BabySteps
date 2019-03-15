class EpisodesController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id])
    @episode = Episode.new(type: params[:type])
  end

  def create
    @kid = Kid.find(params[:kid_id])
    @episode = Episode.new(episode_params)
    @episode.kid = @kid
    if @episode.save
      flash[:notice] = "You added #{@episode.type} episode to your #{@kid.name} profile successfully."
      redirect_to tracks_kid_path(@kid)
    else
      render :new
    end
  end

  private

  def episode_params
    permitted_params = params.dig(:episode, :type).constantize.permitted_params
    params.require(:episode).permit(:type, :note, :tracked_at, permitted_params)
  end
end
