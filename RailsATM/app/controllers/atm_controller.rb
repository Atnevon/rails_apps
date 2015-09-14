class AtmController < ApplicationController
  def home
  	atmaction = params[:atmaction]
  	@balance = RailsATM::Application.config.balance
  	@message = ""

  	case atmaction
	  	when 'withdraw'
	  		@amount = params[:w_amount].to_f
	  		if @balance >= @amount
	  			@balance = @balance - @amount
	  			@message = "Withdrawl Complete. Thank you for your business."
	  		else
	  			@message = "Insufficient funds for this transaction"
	  		end
	  	when 'deposit'
	  		@amount = params[:d_amount].to_f
	  		@balance = @balance + @amount
	  		@message = "Deposit complete. Thank you for your business"
	  	when 'balance'
	  		@message = "Your current balance is: #{@balance}"
  	end

  	RailsATM::Application.config.message = @message
  	RailsATM::Application.config.balance = @balance
  end
end