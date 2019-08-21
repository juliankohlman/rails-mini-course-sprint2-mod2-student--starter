class Order < ApplicationRecord
	def products; end

	def shippable?; end

	def ship; end
end
