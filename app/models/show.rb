class Show < ActiveRecord::Base 
  def self.highest_rating
    maximum(:rating)
  end
  def self.most_popular_show 
    self.highest_rating
  end
end