class Education < ApplicationRecord
  belongs_to :student

  validates :university_name, presence: true

end
