class PagesController < ApplicationController
  def contact
    @hello = "Hello world"
  end

  def about
    @hello = "Goodbye World"
    goodbye = 123
  end

  def home
  end

end
