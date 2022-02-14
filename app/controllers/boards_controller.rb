class BoardsController < ApplicationController

  def show
    @board = Board.find(params[:id])
  end
  def new
    @board = Board.new
  end

  def create
    @board = Board.create(title: params[:board][:title], content: params[:board][:content])
    render json: @board
  end
end
