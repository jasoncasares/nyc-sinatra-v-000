class Title < ActiveRecord::Base
  has_many :figure_titles
  has_many :figures, through: :figure_titles

  def self.find_by_slug(slug)
    self.all.find{|name| name.slug == slug}
  end
  def slug
    self.name.downcase.gsub(" ", "-")
  end

end
