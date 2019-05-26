class Users::OrderHistoriesController<ApplicationController
  def index
    # create paginate function by kaminari
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
