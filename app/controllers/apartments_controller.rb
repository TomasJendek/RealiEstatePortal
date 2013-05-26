class ApartmentsController < ApplicationController

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = exception.message
    puts exception.message
    redirect_to user_session_path
  end



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
    @apartment.user_id = 1
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
