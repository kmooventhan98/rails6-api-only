class Book < ApplicationRecord
    validates :author, presence: true, length: {minimum:3}
    validates :title, presence: true, length: {mininum:3}
end
