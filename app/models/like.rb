class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def self.getcount(params)
  	count = Like.where(:post_id => params).count
  	return count
  end
end
