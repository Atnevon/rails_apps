class WelcomeController < ApplicationController
  def index
  	@homeland = 'New York City'
  	@countries = ['Italy', 'Cuba', 'Japan', 'Germany']
  end

  def about
  end
end
