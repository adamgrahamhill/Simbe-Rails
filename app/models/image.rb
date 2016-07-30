class Image < ApplicationRecord
	has_attached_file :screen_cap
	validates_attachment_content_type :screen_cap, content_type: /\Aimage\/.*\Z/
end
