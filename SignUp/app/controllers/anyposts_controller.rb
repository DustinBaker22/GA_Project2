class AnypostsController < ApplicationController
  def index
    @anyposts = Anypost.all
  end

  def new
    @anypost = Anypost.new
  end

  def create
    @anypost = Anypost.new(anypost_params)
      if @anypost.save
        redirect_to anyposts_path
      else
        render 'new'
      end
  end


      private

      def anypost_params
        params.require(:anypost).permit(:title, :body)
      end

end