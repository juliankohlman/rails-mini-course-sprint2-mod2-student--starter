class Order < ApplicationRecord
	# def products
	# 	order = Order.find(params[:id])
	# 	product_ids = OrderProduct.where(order_id: params[:id]).pluck(:product_id)
	# 	products = Product.find(product_ids)
	# end

	# def shippable?
	# 	order.status == 'pending' && products.count.positive?
	# end

	# def ship
	# 	if shippable?
	# 		order.update(status: 'shipped')
	# 		render json: order, status: :ok, location: api_v1_order_url(order)
	# 	else
	# 		render json: { message: 'There was a problem shipping your order' },
	# 		       status: :unprocessable_entity
	# 	end
	# end
end
