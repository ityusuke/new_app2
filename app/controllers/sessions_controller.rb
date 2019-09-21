class SessionsController < ApplicationController


  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.password == params[:session][:password]
      log_in user
      redirect_to root_path
    else
      flash.now[:danger] = 'emailまたはpasswordが間違っています'
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  def test_login
    create_test_user
    log_in @test_user
    redirect_to root_path

    
  end

  private
  def create_test_user
    @test_user = User.find_or_create_by(username:"test_user",
                                        email:"test@test",
                                        password:"test")
  end
   
end
