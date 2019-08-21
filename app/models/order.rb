class Order < ApplicationRecord
	def products
		order = Order.find(params[:id])
		product_ids = OrderProduct.where(order_id: params[:id]).pluck(:product_id)
		products = Product.find(product_ids)
		products
	end

	def shippable?
		order = Order.find(params[:id])
		order.status != 'shipped' && order.products.count >= 1
	end

	def ship
		shippable? && order.update(status: 'shipped') ? true : false
	end
end
