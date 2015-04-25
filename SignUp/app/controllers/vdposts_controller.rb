class VdpostsController < ApplicationController
  def index
    @vdposts = Vdpost.all
  end

  def new
    @vdpost = Vdpost.new
  end

  def create
    @vdpost = Vdpost.new(vdpost_params)
      if @vdpost.save
        redirect_to vdposts_path
      else
        render 'new'
      end
  end


      private

      def vdpost_params
        params.require(:vdpost).permit(:title, :body)
      end

end