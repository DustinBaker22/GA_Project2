class DspostsController < ApplicationController
  def index
    @dsposts = Dspost.all
  end

  def new
    @dspost = Dspost.new
  end

  def create
    @dspost = Dspost.new(dspost_params)
      if @dspost.save
        redirect_to dsposts_path
      else
        render 'new'
      end
  end


      private

      def dspost_params
        params.require(:dspost).permit(:title, :body)
      end

end