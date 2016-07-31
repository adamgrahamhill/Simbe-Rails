class AddSelectedColumnToImage < ActiveRecord::Migration[5.0]
	def change
		change_table :images do |t|
			t.boolean :selected
		end
	end
end
