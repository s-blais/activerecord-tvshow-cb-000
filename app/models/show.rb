class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating).rating
  end

  def self.most_popular_show
    self.maximum(:rating).name
  end

  def lowest_rating
    self.minimum(:rating).rating
  end

  def least_popular_show
    self.minimum(:rating).name
  end
  

end
