class StaticPagesController < ApplicationController
  def home
    @images = Image.all
  end
  def events
  end
  def members
  end
end
