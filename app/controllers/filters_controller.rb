class FiltersController < ApplicationController
  def index
      @search = Apartment.search(params[:q])
      @result = @search.result
  end
end
