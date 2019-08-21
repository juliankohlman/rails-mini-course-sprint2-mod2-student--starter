# Order model not directly queried from its model, 'other' tables can be queried with those results being stored in variables that can be used in Order instance methods like shippable below to produce results that are dependant on multiple tables and relationships
class Order < ApplicationRecord
	def products
		product_ids = OrderProduct.where(order_id: id).pluck(:product_id)
		Product.find(product_ids)
	end

	def shippable?
		status == 'pending' && products.count.positive?
	end

	def ship
		shippable? && update(status: 'shipped')
	end
end
