class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all

  end

  def show

  end

  private

  def restaurant_params
    params.require(:list).permit(:name)
  end

  def new

    @list = List.new

  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successully created'

    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)

  end

  def set_list
    @list = List.find(params[:id])
  end


end
