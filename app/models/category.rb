class Category < ActiveRecord::Base
	validates :name, presence_: true, length: { minimum: 3, maximum: 25}
	validates_uniqueness_of :name
end