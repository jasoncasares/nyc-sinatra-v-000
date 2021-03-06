class Landmark <ActiveRecord::Base
  belongs_to :figure

  def self.find_by_slug(slug)
    self.all.find{|name| name.slug == slug}
  end
  def slug
    self.name.downcase.gsub(" ", "-")
  end
end
