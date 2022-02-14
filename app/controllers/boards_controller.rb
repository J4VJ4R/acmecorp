class BoardsController < ApplicationController
  def new
    @board = Board.new
    @board.title = 'COMPETENCIAS CLAVE'
  end

  def create
    @board = Board.create(title: params[:board][:title])
    render json: @board
  end
end
