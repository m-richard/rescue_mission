class Question < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true, length: {maximum: 40}
  validates :content, presence: true, uniqueness: true, length: {maximum: 150}

  belongs_to :user
  has_many :answers
end
