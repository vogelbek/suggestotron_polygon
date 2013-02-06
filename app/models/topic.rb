class Topic < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :votes
  def as_json(*args)
    {description: description, title: title}
  end
end
