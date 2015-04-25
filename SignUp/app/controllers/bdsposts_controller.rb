class BdspostsController < ApplicationController
  def index
    @bdsposts = Bdsost.all
  end

  def new
    @bdspost = Bdsost.new
  end

  def create
    @bdspost = Bdsost.new(bdspost_params)
      if @bdspost.save
        redirect_to bdsposts_path
      else
        render 'new'
      end
  end


      private

      def bdspost_params
        params.require(:bdspost).permit(:title, :body)
      end

end