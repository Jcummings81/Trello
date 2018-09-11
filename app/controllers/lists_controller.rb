class ListsController < ApplicationController
  before_action :set_board
  before_action :set_list, only: [:show, :update, :edit, :destroy]
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = @board.lists.new
  end

  def edit
    render partial "form"
  end

  def update
    if @list.update(list_params)
      redirect_to [@board, @list]
    else
      render :edit
    end
  end

  def create
    @list = @board.lists.new(list_params)

    if @list.save
      redirect_to [@board, @list]
    else
      render :new
    end

  end

  def destroy
    @list.destroy
    redirect_to [@board, @list]
  end

  private
  

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end 
end