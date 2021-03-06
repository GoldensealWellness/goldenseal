Spree::OrdersController.class_eval do
  before_filter :remove_promos, :only => :empty
  
  def remove_promos
    if @order = current_order
      @order.adjustments.each do |adj|
        adj.destroy
      end
    end
  end
end
