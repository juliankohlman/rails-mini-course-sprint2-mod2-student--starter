class OrderProcessor
	def initialize(order)
		@order = order
		@products = order.products
	end

	def ship
		# your code here
		# @order.ship
		if products_available?
			@products.map!(&:reduce_inventory)
			@order.ship
		else
			false
		end
	end

	private

	def products_available?
		# code here
		# %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
		@products.all?(&:available?)
	end
end
