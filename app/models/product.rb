# Model instance methods interact with the models attributes, but any Products table querying will happen in a controller. The Product model has no concept of any of that logic. Just knows its own attributes.
class Product < ApplicationRecord
	def available?
		inventory.positive?
	end

	def reduce_inventory
		update(inventory: inventory - 1)
	end
end
