# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  subject    :string           not null
#  level      :integer          default(100)
#  credit     :integer          default(1)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Klass < ApplicationRecord
    
    validates   :name, :subject, presence: true
    
end
