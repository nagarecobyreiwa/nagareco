class Users::OrderHistoriesController<ApplicationController
before_action :authenticate_user!
  def index
    # create paginate function by kaminari
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @order = Order.find(params[:id])
  end
end
