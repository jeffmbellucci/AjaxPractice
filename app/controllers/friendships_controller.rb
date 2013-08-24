class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new(params[:friendship])
    @friendship.save

    respond_to do |format|
      format.json { render :json => @friendship }
      format.html { render :json => @friendship }
    end
  end

  def destroy
    @friendship = Friendship.find(params[:friendship])
    if @friendship.destroy
     redirect_to users_url
   else
     redirect_to users_url
   end
  end
end
