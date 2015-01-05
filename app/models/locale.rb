class Locale < ActiveRecord::Base
  validates :zip, presence: true
  validates :ip, presence: true
end
