class Text

  require 'rubygems'
  require 'twilio-ruby'

  def client
    account_sid = "AC7a79317de641fbf5d031e092452a156b"
    auth_token = "4a5a01cf469844c105f980183f86b732"
    Twilio::REST::Client.new account_sid, auth_token
  end

  def send_text(params)
    params.permit!
    binding.pry
    client.account.messages.create({
      :from => params[:From][:from],
      :to => params[:To][:to],
      :body => params[:Body][:body]
    })
  end

end
