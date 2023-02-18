class SkillsController < ApplicationController
  before_action :logged_in_user
  before_action :set_skill, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
    @skills = Skill.where(user_id: current_user.id)
    @modal = params[:modal]
    if params[:skill_name].present?
      @category = Category.find(params[:category_id])
      @skill_name = params[:skill_name]
      @level = params[:level]
    end
  end

  def new
    @category = Category.find(params[:category_id])
    @skill = Skill.new
  end

  def create
    p = skill_params
    @category = Category.find(params[:category_id])
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to action: index, **p, modal: :create
    else
      flash.now[:danger] = '習得スキルを登録できませんでした'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @categories = Category.all
    @category = Category.find(params[:category_id])
    @skills = Skill.where(user_id: current_user.id)
  end

  def update
    p = skill_params
    @skill.update(skill_params)
    redirect_to action: index, **p, modal: :update
  end

  def destroy
    skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to action: index, modal: :destroy, status: :see_other
  end

  private

    def skill_params
      params.require(:skill).permit(:id, :skill_name, :level, :category_id).merge(user_id: current_user.id)
    end

    def set_skill
      @skill = Skill.find(params[:id])
    end
end
