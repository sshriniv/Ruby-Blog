class CommentsController < ApplicationController


def index
end

def show
end

def new
end

def edit
end

def create

	#Clicking "Create Comment" transferes control here
	@comment = Comment.new(comment_params)

  #User id is not a form field and hence is not assigned in the view. It is assigned when control is transferred back here after Save is pressed
  @comment.user_id = current_user.id

  #Assigning comment_date since it is not a filed on the form
  @comment.comment_date = Date.today

      if @comment.save
        #format.html { redirect_to @post, notice: 'Post was successfully created.' }\
        redirect_to posts_path
      end
end

def update
end

def destroy

    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path, :notice => "Comment deleted"
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:post_id, :comment)
end

end