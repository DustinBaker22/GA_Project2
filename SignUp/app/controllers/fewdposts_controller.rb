class FewdpostsController < ApplicationController
  def index
    @fewdposts = Fewdpost.all
  end

  def new
    @fewdpost = Fewdpost.new
  end

  def create
    @fewdpost = Fewdpost.new(fewdpost_params)
      if @fewdpost.save
        redirect_to fewdposts_path
      else
        render 'new'
      end
  end


      private

      def fewdpost_params
        params.require(:fewdpost).permit(:title, :body)
      end

end