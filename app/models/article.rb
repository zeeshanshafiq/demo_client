# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  user_id      :string
#  price        :string
#  descricption :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Article < ActiveRecord::Base
  belongs_to :user

  def owner_name
    user.try(:name)
  end
end
