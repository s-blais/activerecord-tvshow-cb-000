class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.maximum(:rating).first
  end

  def lowest_rating
    self.minimum(:rating)
  end

  def least_popular_show
    self.minimum(:rating).first
  end


end
