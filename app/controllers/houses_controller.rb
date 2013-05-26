class HousesController < ApplicationController
  def show
    @house = House.find(params[:id])
  end

  def index
    @house = House.all
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new

    @house = House.new(params[:house])
    @house.user_id = current_user.id
    respond_to do |format|
      if @house.save
        format.html  { redirect_to(@house,
                                   :notice => 'Post was successfully created.') }
        format.json  { render :json => @house,
                              :status => :created, :location => @house }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @house.errors,
                              :status => :unprocessable_entity }
      end
    end
  end
end
