class Blueprint < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :coursecode, presence: true, length: { maximum: 10 }
  validates :maxStudents, presence: true, numericality: { only_integer: true }
  validates :minStudents, presence: true, numericality: { only_integer: true }
  # validates :deadline, presence: true

end
