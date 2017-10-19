class ShortenedUrl < ApplicationRecord
  # attr_accessor :user, :long_url, :short_url

  validates :short_url, presence: true, uniqueness: true
  validates :long_url, presence: true

  belongs_to :submitter,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id

  has_many :visits,
  class_name: :Visit,
  primary_key: :id,
  foreign_key: :url_id

  has_many :visitors,
    through: :visits,
    source: :user


  def self.random_code
    code = SecureRandom.urlsafe_base64
  end

  def self.shorten(user, long_url)
    # x = ShortenedUrl.new
    # x.user = user
    # x.long_url = long_url
    # x.short_url = ShortenedUrl.random_code
    # x.save!
    ShortenedUrl.create!(user: user, long_url: long_url,
                        short_url: ShortenedUrl.random_code)
  end



end
