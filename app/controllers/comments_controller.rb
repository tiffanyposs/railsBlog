class CommentsController < ApplicationController


	 def new
	   @user = User.find_by(id: session[:user_id])
	   if @user
	     @comment = Comment.new
	   end
	 end

  def create
    @entry = Entry.find(params[:entry_id])
    @user = User.find_by(id: session[:user_id])
    @comment = @entry.comments.create(comment_params)
    redirect_to entry_path(@entry)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:title, :content, :user_id)
    end

end








 
