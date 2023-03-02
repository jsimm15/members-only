class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
 
before_action :authenticate_user!, only: [:new, :create]

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_path(@user)
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

end
