class SecretsController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :index }
      format.json { render :json => Secret.all }
    end
  end

  def create
    @secret = Secret.create!(params[:secret])

    respond_to do |format|
      format.json { render :json => @secret }
      format.html { redirect_to user_url(params[:user_id]) }
    end

  end

  def new
    @secret = Secret.new
    @recipient_id = params[:user_id]
    render :new
  end
end
