class Show < ActiveRecord::Base 
  def highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show 
    self.highest_rating
  end
end