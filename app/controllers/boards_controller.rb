class BoardsController < ApplicationController
  before_action :find_article, except: [:new, :create, :index]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @boards = Board.all
  end
  def show
  end
  def edit
  end
  def new
    @board = Board.new
  end

  def create
    @board = Board.create(title: params[:board][:title],
                          content: params[:board][:content],
                          user: current_user)
    redirect_to index_path
  end

  def update
    @board.update(title: params[:board][:title], content: params[:board][:content])
    redirect_to @board
  end

  def destroy
    @board.destroy
    redirect_to root_path
  end

  def find_article
    @board = Board.find(params[:id])
  end
end
