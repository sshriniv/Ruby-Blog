class Category < ActiveRecord::Base

	validates_presence_of :name
	has_many :posts, :through => :categoriesposts
	has_many :categoriesposts
	#has_and_belongs_to_many :posts
end
