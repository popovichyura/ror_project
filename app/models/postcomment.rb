class Postcomment < ApplicationRecord
			belongs_to :post
		belongs_to :user
		validates :text, presence:true

end