class MdpostsController < ApplicationController
  def index
    @mdposts = Mdpost.all
  end

  def new
    @mdpost = Mdpost.new
  end

  def create
    @mdpost = Mdpost.new(post_params)
      if @mdpost.save
        redirect_to mdposts_path
      else
        render 'new'
      end
  end


      private

      def mdpost_params
        params.require(:mdpost).permit(:title, :body)
      end

end