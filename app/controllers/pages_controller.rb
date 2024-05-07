class PagesController < ApplicationController
  layout -> { ApplicationLayout }

  def home
    render Pages::HomeView
  end
end
