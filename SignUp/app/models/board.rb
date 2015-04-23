class Board < ActiveRecord::Base
	has_many :threads

	def thread_count
	end

	def post_count
		# board.post.count
	end

	def last_post
	end


end
