class StaticPagesController < ApplicationController
  def home
    @title = "Home"
  end

  def help
    @title = "Contact"
  end
  
  def about
    @title = "About Us"
  end
end
