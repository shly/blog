class Article < ActiveRecord::Base
  attr_accessible :author, :comment, :content, :date, :sort, :title
end
