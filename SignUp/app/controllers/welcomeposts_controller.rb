class WelcomepostsController < ApplicationController
  def index
    @welcomeposts = Welcomepost.all
  end

  def new
    @welcomepost = Welcomepost.new
  end

  def create
    @welcomepost = Welcomepost.new(welcomepost_params)
      if @welcomepost.save
        redirect_to welcomeposts_path
      else
        render 'new'
      end
  end


      private

      def welcomepost_params
        params.require(:welcomepost).permit(:title, :body)
      end

end