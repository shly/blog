class Article < ActiveRecord::Base
  attr_accessible :author, :content, :date, :sort, :title
end
