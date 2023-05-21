class ListsController < ApplicationController

  def index
    @list = List.all

  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @movies = Movie.all

    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: unprocessable_entity
    end
  end

private
  def list_params
    params.require(:list).permit(:name, :city)
  end

end
