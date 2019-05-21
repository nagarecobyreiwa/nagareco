class Admins::AdminsController < ApplicationController
  # 仮トップページ
  def top
   @Admin = Admin.find(params[:id])
  end
end
