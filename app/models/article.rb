class Article < ApplicationRecord
  acts_as_paranoid

   validates :title, presence: true
   validates :content, presence: true, length: { minimum: 10 }
end
