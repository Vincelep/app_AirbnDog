class Dog < ApplicationRecord
	has_many :strolls
	has_many :dog_sitter, through: :strolls
end
