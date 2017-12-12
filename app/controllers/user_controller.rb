class UserController < ApplicationController
  def index
    @users = User.all
  end


def new
  @user = User.new
end

  def create
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to '/login'
      else
        flash[:notice] = "Email already taken or password is to short. Try Again"
        redirect_to '/signup'
      end
    end

    def show
      @articles = Article.all
    end

    def article
      new_article = Article.new({:title => params[:title], :link => params[:link], :description => params[:description]})
      current_user.articles << new_article
      @articles = Article.all

    end

    def article_destroy
      @article = Article.find(params[:id])
      @article.delete
      redirect_to '/profile'
    end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end


end
