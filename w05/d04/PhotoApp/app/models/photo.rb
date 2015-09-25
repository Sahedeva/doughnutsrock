class Photo < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :path, :title

  # Class method
  def self.sort
    "Sorted!"
  end

  # Instance method
  def meme

  end

end