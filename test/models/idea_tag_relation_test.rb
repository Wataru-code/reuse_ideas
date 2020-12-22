# == Schema Information
#
# Table name: idea_tag_relations
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  idea_id    :bigint
#  tag_id     :bigint
#
# Indexes
#
#  index_idea_tag_relations_on_idea_id  (idea_id)
#  index_idea_tag_relations_on_tag_id   (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (idea_id => ideas.id)
#  fk_rails_...  (tag_id => tags.id)
#
require 'test_helper'

class IdeaTagRelationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
