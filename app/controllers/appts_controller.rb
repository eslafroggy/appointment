class ApptsController < ApplicationController
  def index
    @appts = Appt.all
  end

  def new
    @appt = Appt.new
  end

  def create
     @appt = Appt.new(params[:appt])

      if @appt.save
        redirect_to appts_path
      else
        render :new
      end
  end

  def edit
      @appt = Appt.find(params[:id])
  end

  def update
     @appt = Appt.find(params[:id])

      if @appt.update_attributes(params[:appt])
        redirect_to appts_path
      else
        render :edit
      end
  end

  def destroy
      @appt = Appt.find(params[:id])

      @appt.destroy

      redirect_to appts_path
  end

  def show
      @appt = Appt.find(params[:id])
  end
end
