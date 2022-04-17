class Food < ApplicationRecord
  belongs_to :category, optional: true
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 ,message: "%{value} seems wrong" }
  validates :category_id, presence: true, numericality: { only_integer: true}

  def self.by_letter(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end
end