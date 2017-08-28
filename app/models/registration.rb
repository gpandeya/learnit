# == Schema Information
#
# Table name: registrations
#
#  id         :integer          not null, primary key
#  klass_id   :integer          not null
#  true       :integer          not null
#  teacher_id :integer          not null
#  semester   :string           not null
#  year       :integer
#  capacity   :integer
#  is_open    :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Registration < ApplicationRecord
    
    belongs_to :teacher, foreign_key: :teacher_id, class_name: "User"
    
end
