class Admins::LabelsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @label = Label.new
    @labels = Label.all
  end

  def create
    label = Label.new(label_params)
    if label.save
       redirect_to admins_labels_path
    else
       flash[:notice] = "エラーが発生しました"
       redirect_to admins_labels_path
    end
  end

  def edit
    @label =  Label.find(params[:id])
  end

  def update
    @label =  Label.find(params[:id])
    if @label.update(label_params)
       redirect_to admins_labels_path
    else
       render 'edit'
    end
  end

  private

  def label_params
    params.require(:label).permit(:name)
  end
end
