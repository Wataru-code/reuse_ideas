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
require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
