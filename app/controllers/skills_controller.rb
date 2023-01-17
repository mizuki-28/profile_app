class SkillsController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @skill = @category.skills.new
  end

  def created
    @category = Category.find(params[:category_id])
    @skill = @category.skills.new(skill_params)
    if @skill.save
      flash[:success] = "習得スキルを登録しました"
      redirect_to skills_path
    else
      flash[:alert] = "習得スキルを登録できませんでした"
      render new, status: :unprocessable_entity
    end
  end

  def edit
    @categories = Category.all
    @skills = Skill.all
  end

  def destroy
    @skill.destroy
    flash[:success] = "習得スキルを削除しました"
  end

  private

    def skill_params
      params.require(:skill).permit(:skill_name, :level, :category_id)
    end
end
