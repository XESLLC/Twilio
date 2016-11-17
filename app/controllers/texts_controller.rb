class TextsController < ApplicationController

  def index
    @messages = Text.new.client.account.messages.list
  end

  def new
    @messageSID = params[:id]
  end

  def create
    Text.new.send_text(params)
    redirect_to new_twilio_text_path
  end


  # def params.permit(:To, :From, :Body, :twilio_id)
  # end

end
