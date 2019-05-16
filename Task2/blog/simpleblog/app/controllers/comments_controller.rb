class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if current_user.moderator?
        @comment.UsernameEmail ="[moderator]"+ current_user.email

    elsif current_user.admin?
          @comment.UsernameEmail ="[admin]"+ current_user.email
        elsif
    @comment.UsernameEmail = current_user.email
  end
    @comment.save
  redirect_to post_path(@post)
  end

  private def comment_params
    params.require(:comment).permit( :body)
  end

  def destroy
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:post_id])
  @comment.destroy
  redirect_to post_path(@post)

  end
end
