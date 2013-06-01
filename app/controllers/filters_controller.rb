class FiltersController < ApplicationController
  def index
      @search = Apartment.search(params[:q])
      @result = @search.result

      @state = State.find(1)
      @counties = County.all
  end
end
