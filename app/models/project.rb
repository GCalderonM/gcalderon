class Project < ApplicationRecord
    has_one_attached :image

    validates :name, :description, :project_url, presence: true
end
