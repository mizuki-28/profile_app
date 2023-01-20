class SkillsController < ApplicationController

  def index
    @categories = Category.all
    @skills = Skill.where(user_id: current_user.id)
  end

  def new
    @category = Category.find(params[:category_id])
    @skill = Skill.new
  end

  def create
    @category = Category.find(params[:category_id])
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:success] = '習得スキルを登録しました'
      redirect_to user_skills_path
    else
      flash.now[:danger] = '習得スキルを登録できませんでした'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    if @skill.update(params[:user_id][:category_id])
      flash[:success] = "習得レベルを更新しました"
      redirect_to user_skills_path
    else
      flash[:alert] = "習得スキルを更新できませんでした"
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:success] = "習得スキルを削除しました"
    redirect_to user_skills_path, status: :see_other
  end

  private

    def skill_params
      params.require(:skill).permit(:skill_name, :level, :category_id).merge(user_id: current_user.id)
    end
end
