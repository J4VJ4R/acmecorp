class BoardsController < ApplicationController
  before_action :find_article, except: [:new, :create, :index, :from_author]
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
    @board = current_user.boards.create(boards_params)
    redirect_to @board
  end

  def update
    @board.update(boards_params)
    redirect_to @board
  end

  def destroy
    @board.destroy
    redirect_to root_path
  end

  def find_article
    @board = Board.find(params[:id])
  end

  def from_author
    @user = User.find(params[:user_id])
  end

  def boards_params
    params.require(:board).permit(:title, :content)
  end
end
