# == Schema Information
#
# Table name: ideas
#
#  id         :bigint           not null, primary key
#  category   :string(255)
#  content    :text(65535)
#  story      :text(65535)
#  title      :string(255)
#  trick      :text(65535)
#  user_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Idea < ApplicationRecord
    has_many :comments
    
    validates :title, presence: true, length: { maximum: 20 }
    validates :trick, presence: true, length: { maximum: 100 }
    validates :content, presence: true, length: { maximum: 1000 }
end
