# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ApplicationRecord
  validates :name, presence: true

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment

  has_many :students,
    through: :enrollments,
    source: :enrolled_student

  belongs_to :prerequisite,
    primary_key: :id,
    foreign_key: :prereq_id,
    class_name: :Course

  belongs_to :instructors,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :User

  # has_many :postrequisites,
  #   primary_key: :id,
  #   foreign_key: :prereq_id,
  #   class_name: :Course
end
