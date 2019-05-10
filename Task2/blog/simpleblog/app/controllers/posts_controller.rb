class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
#  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
 @post = Post.all
  end

def new
@post = Post.new
end

def show
  @post = Post.find(params[:id])
end
def edit
  @post = Post.find(params[:id])

end
def update
  @post = Post.find(params[:id])
  if(@post.update(post_params))
  redirect_to '/posts'
  else
    render 'edit'
end
end

def destroy
@post = Post.find(params[:id])

@post.destroy
  redirect_to '/posts'
end
def create
@post  = Post.new(post_params)
if(@post.save)
redirect_to '/posts'
else
  render 'new'
end
end

private def post_params
  params.require(:post).permit(:title, :body, :short)
end
end
