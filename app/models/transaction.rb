class Transaction < ApplicationRecord
	def index
		render :json Transaction.order(create_at: desc)
	end

	def filter
		transactions = Transaction.find_by(category: params[:category])
		render :json transactions
	end
end
