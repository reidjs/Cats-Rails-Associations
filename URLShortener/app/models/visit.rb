class Visit < ApplicationRecord
  belongs_to :user,
  class_name: :User,
  foreign_key: :user_id,
  primary_key: :id

  belongs_to :shortened_url,
  class_name: :ShortenedUrl,
  foreign_key: :url_id,
  primary_key: :id

  def self.record_visit!(user, shortened_url)
    Visit.create!(user: user, shortened_url: shortened_url)
  end
end
