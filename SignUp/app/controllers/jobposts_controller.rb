class JobpostsController < ApplicationController
  def index
    @jobposts = Jobpost.all
  end

  def new
    @jobpost = Jobpost.new
  end

  def create
    @jobpost = Jobpost.new(jobpost_params)
      if @jobpost.save
        redirect_to jobposts_path
      else
        render 'new'
      end
  end


      private

      def jobpost_params
        params.require(:jobpost).permit(:title, :body)
      end

end