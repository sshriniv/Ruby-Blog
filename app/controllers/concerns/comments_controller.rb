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
end

def update
end

def destroy
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:comment)
end

end