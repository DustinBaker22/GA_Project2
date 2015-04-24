class BoardsController < ApplicationController

	def index
		@boards = Board.all
	end

	def new_board
		@board = Board.new
	end

	def create_board
		@board = Board.new(board_params)
			if @board.save
				redirect_to boards_path
			else
				render "new"
			end
	end

	def show
		@board = board.find(params[:id])
		@thread = Thread.new
		@threads = @board.threads
	end

private

	def board_params
		params.require(:board).permit(:title, :description)
	end

end
