class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ home about ]

  def home
  end

  def ride_the_bus_home
  end

  def about
  end
end
