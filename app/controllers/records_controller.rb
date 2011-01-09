class RecordsController < ApplicationController
  #GET /records
  # This Controller will ask for all the records currently in the system
  def show
    @records = Record.all
  end

  #GET /record/userid/pageid
  # This get call will persiste information about the user and the pageid in mongodb
  def create
    @record = Record.new({"userid"=>params[:userid], "pageid"=>params[:pageid]})
    if @record.save
      flash[:notice] = 'The page view was successfully recorded.'
      redirect_to :action => 'show'
    else
      flash[:notice] = 'Page View not saved; Please try again.'
    end
  end
end
