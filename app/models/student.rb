class Student < ApplicationRecord
  has_many :skills
  has_many :educations
  has_many :experiences
end
