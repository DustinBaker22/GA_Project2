class PagesController < ApplicationController
before_action :require_user, except: [:contact, :help]
before_action :require_admin, only: [:help]

def index

end

def signup

end

def about

end

def contact

end

def help

end

end
