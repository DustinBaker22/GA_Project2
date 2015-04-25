class UxdpostsController < ApplicationController
  def index
    @uxdposts = Uxdpost.all
  end

  def new
    @uxdpost = Uxdost.new
  end

  def create
    @uxdpost = Uxdpost.new(uxdpost_params)
      if @uxdpost.save
        redirect_to uxdposts_path
      else
        render 'new'
      end
  end


      private

      def uxdpost_params
        params.require(:uxdpost).permit(:title, :body)
      end

end