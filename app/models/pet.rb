class Pet < ApplicationRecord
  SPECIES = %w(dog cat snake bird tarantula)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES}

  def found_days_ago
    days_ago_found = (Date.today - self.found_on).to_i
    "#{days_ago_found} days ago"
  end
end
