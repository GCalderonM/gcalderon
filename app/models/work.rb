class Work < ApplicationRecord
  has_one_attached :logo

  validates :company_name, :job, :start_year, :finish_year, presence: true
end
