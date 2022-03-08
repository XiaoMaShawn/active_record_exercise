class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  # validate :must_carry_at_least_one_of_the_men_or_women_apparel

  def must_carry_at_least_one_of_the_men_or_women_apparel
    if mens_apparel.present? && womens_apparel.present?
      errors.add(mens_apparel, "Stores must carry at least one of the men's or women's apparel ")
    end
  end
end
