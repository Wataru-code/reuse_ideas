class IdeasController < ApplicationController
    before_action :set_target_idea_id, only: %i[show edit update destroy]
    
    def index
        @ideas = Idea.page(params[:page])
    end

    def new
        @idea = Idea.new
    end

    def create
        idea = Idea.new(idea_params)
        if idea.save
            flash[:notice] = "新しいスポット「#{idea.title}」を作成しました！"
            redirect_to idea
        else
            redirect_to new_idea_path, flash: {
                idea: idea,
                error_messages: idea.errors.full_messages
            }
        end
    end

    def show
        @comment = Comment.new(idea_id: @idea.id)
    end

    def edit
    end

    def update
        @idea.update(idea_params)

        redirect_to @idea
    end

    def destroy
        @idea.delete

        redirect_to ideas_path, flash: { notice: "「#{@idea.title}」が削除されました！" }
    end

    private
    def idea_params
        params.require(:idea).permit(
            :title, :category, :story, :trick, :content, :user_name
            )
    end

    def set_target_idea_id
        @idea = Idea.find(params[:id])
    end
end
