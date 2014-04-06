class WatchedRecordsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @episode = Episode.find(params[:episode])
    WatchedRecord.create(:user => @user, :episode => @episode)
    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:user_id])
    @episode = Episode.find(params[:id])
    @record = WatchedRecord.find_by_user_id_and_episode_id(@user, @episode)
    @record.destroy

    redirect_to root_path
  end
end
