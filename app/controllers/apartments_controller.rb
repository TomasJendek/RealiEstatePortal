class ApartmentsController < ApplicationController

  def show
    @apartment = Apartment.find(params[:id])
  end

  def index
    @apartment = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new

    @apartment = Apartment.new(params[:apartment])
    @apartment.user_id = current_user.id
    respond_to do |format|
      if @apartment.save
        format.html  { redirect_to(@apartment,
                                   :notice => 'Post was successfully created.') }
        format.json  { render :json => @apartment,
                              :status => :created, :location => @apartment }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @apartment.errors,
                              :status => :unprocessable_entity }
      end
    end
  end

end
