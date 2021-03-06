class Figure < ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles

  def self.find_by_slug(slug)
    self.all.find{|name| name.slug == slug}
  end
  def slug
    self.name.downcase.gsub(" ", "-")
  end
end
