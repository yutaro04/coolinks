class TargetsController < ApplicationController
  def index
    @targets = Target.all
  end

  def edit
    @target = Target.find(params[:id])
  end

  def new
    @target = Target.new
  end

  def create
    target = Target.new(target_params)
    target.save
    redirect_to new_link_path
  end

  def update
    target = Target.find(params[:id])
    target.update(target_params)
    redirect_to targets_path
  end

  def destroy
    target = Target.find(params[:id])
    target.destroy
    redirect_to targets_path
   end

  def edit
    @target = Target.find(params[:id])
  end

  private
  def target_params
    params.require(:target).permit(:target)
  end
end
