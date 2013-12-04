class Post < ActiveRecord::Base
    
	validates_presence_of :title, :body, :publish_date
	belongs_to :user
	has_many :categories, :through => :categoriesposts
	has_many :categoriesposts
	has_many :comments
	#has_and_belongs_to_many :categories
end
