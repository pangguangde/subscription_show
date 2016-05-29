# == Schema Information
#
# Table name: expressages
#
#  id         :integer          not null, primary key
#  type       :string
#  code       :string
#  history    :string
#  owner      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer
#

require 'test_helper'

class ExpressageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
