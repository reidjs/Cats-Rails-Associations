class Toy < ActiveRecord::Base
  belongs_to :cat,
  primary_key: :id
end
