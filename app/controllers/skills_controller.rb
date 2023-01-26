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
    @categories = Category.all
    @category = Category.find(params[:category_id])
    @skills = Skill.where(user_id: current_user.id)
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:success] = "習得レベルを更新しました"
      redirect_to user_skills_path
    else
      flash[:alert] = "習得スキルを更新できませんでした"
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to user_skills_path
  end

  private

    def skill_params
      params.require(:skill).permit(:id, :skill_name, :level, :category_id).merge(user_id: current_user.id)
    end
end
