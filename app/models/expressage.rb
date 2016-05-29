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

class Expressage < ActiveRecord::Base
end
