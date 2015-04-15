class PagesController < ApplicationController
before_action :require_user, except: [:contact, :help]

def signup

end

def about

end

def contact

end

def help

end

end
