class TextsController < ApplicationController

  def index
    @messages = Text.new.client.account.messages.list
  end

  def new
    params.permit!
    @to = params[:format][1..-1]
  end

  def create
    Text.new.send_text(params)
    redirect_to twilio_texts_path
  end


  # def params.permit(:To, :From, :Body, :twilio_id)
  # end

end
