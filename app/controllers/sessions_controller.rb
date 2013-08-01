class SessionsController < ApplicationController

  def new
    @session = Session.new
  end
  
  def create
    @session = Session.new(params[:session])
    @user = User.where(:email => @session.name, :password => @session.password)
    
    if  @user[0] != nil
      redirect_to posts_path
    else
      redirect_to users_path
    end 
    
  end
  
  def destroy     
    
  end
  
end
