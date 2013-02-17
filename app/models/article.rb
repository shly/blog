class Article < ActiveRecord::Base
  attr_accessible :author, :content, :date, :sort, :title
  has_many :comments, :dependent => :destroy
end
