class UxdipostsController < ApplicationController
  def index
    @uxdiposts = Uxdipost.all
  end

  def new
    @uxdipost = Uxdipost.new
  end

  def create
    @uxdipost = Uxdipost.new(uxdipost_params)
      if @uxdipost.save
        redirect_to uxdiposts_path
      else
        render 'new'
      end
  end


      private

      def uxdipost_params
        params.require(:uxdipost).permit(:title, :body)
      end

end