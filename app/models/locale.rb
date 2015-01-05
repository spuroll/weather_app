class Locale < ActiveRecord::Base
  validates :zip, presence: true, length: {minimum: 5, maximum: 5}
  validates :ip, presence: true, length: {minimum: 7, maximum: 15}
end
