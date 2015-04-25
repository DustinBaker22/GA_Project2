class WdipostsController < ApplicationController
  def index
    @wdiposts = Wdipost.all
  end

  def new
    @wdipost = Wdipost.new
  end

  def create
    @wdipost = Wdipost.new(wdipost_params)
      if @wdipost.save
        redirect_to wdiposts_path
      else
        render 'new'
      end
  end


      private

      def wdipost_params
        params.require(:wdipost).permit(:title, :body)
      end

end