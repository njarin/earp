class CommentsController < ActionController::Base
  def new
  end

  def create
   @comment = Comment.new(comment_params)
   @experiment = Experiment.find(params[:experiment_id])
   @user = User.find(session[:user_id])
   @comment.experiment = @experiment
   @comment.user = @user

    if @comment.save
      # comments show
    else
      # error handling
    end
  end

    private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
