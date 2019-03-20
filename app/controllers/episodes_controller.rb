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
      respond_to do |format|
        format.html { redirect_to tracking_kid_path(@kid) }
        format.js
      end
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def edit
    @episode = Episode.find(params[:id])
    @kid = Kid.find(params[:kid_id])
  end

  def update
    @episode = Episode.find(params[:id])
    @kid = Kid.find(params[:kid_id])
    if @episode.update(episode_params)
      respond_to do |format|
        format.html { redirect_to full_log_kid_path(@kid) }
        format.js
      end
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @kid = Kid.find(params[:kid_id])
    @episode.destroy
    flash[:notice] = "You deleted #{@episode.title} episode to your #{@kid.name} profile successfully."
    redirect_to full_log_kid_path(@kid)
  end

  private

  def episode_params
    permitted_params = params.dig(:episode, :type).constantize.permitted_params
    params.require(:episode).permit(:type, :note, :tracked_at, permitted_params)
  end
end
