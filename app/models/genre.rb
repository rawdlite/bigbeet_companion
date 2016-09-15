class Genre < ApplicationRecord
  has_many :artists
  has_many :albums

  def children
    Genre.where(parent: id)
  end

  def ancestor
    Genre.find_by_id(parent)
  end

end
