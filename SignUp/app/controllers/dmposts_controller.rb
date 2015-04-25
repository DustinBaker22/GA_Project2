class DmpostsController < ApplicationController
  def index
    @dmposts = Dmpost.all
  end

  def new
    @dmpost = Dmpost.new
  end

  def create
    @dmpost = Dmpost.new(dmpost_params)
      if @dmpost.save
        redirect_to dmposts_path
      else
        render 'new'
      end
  end


      private

      def dmpost_params
        params.require(:dmpost).permit(:title, :body)
      end

end