class PmpostsController < ApplicationController
  def index
    @pmposts = Pmpost.all
  end

  def new
    @pmpost = Pmpost.new
  end

  def create
    @pmpost = Pmpost.new(pmpost_params)
      if @pmpost.save
        redirect_to pmposts_path
      else
        render 'new'
      end
  end


      private

      def pmpost_params
        params.require(:pmpost).permit(:title, :body)
      end

end