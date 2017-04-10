class Article < ActiveRecord::Base
    validates :title, presence: true, length: {minimum: 3, maximum: 100}
    validates :description, presence: false, length: {maximum: 300}
    validates :language_code, presence: true, length: {minimum: 3, maximum: 10}
    validates :content_type, presence: true, length: {minimum: 3, maximum: 10}
    validates :difficulty_level, presence: true
    validates :word_count, presence: true
end