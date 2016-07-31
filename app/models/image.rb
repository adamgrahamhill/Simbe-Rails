class Image < ApplicationRecord
	has_attached_file :screen_cap
	validates_attachment_content_type :screen_cap, content_type: /\Aimage\/.*\Z/
	validates :name, presence: true
	validates :screen_cap, presence: true
end
