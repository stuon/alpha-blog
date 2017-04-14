class Article < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true, length: {minimum: 3, maximum: 100}
    validates :description, presence: true, length: {minimum: 3, maximum: 300}
    validates :user_id, presence: true
    
    validates :language_code, presence: true, length: {minimum: 3, maximum: 10}
    validates :content_type, presence: true, length: {minimum: 3, maximum: 10}
    validates :difficulty_level, presence: true
    validates :word_count, presence: true
end