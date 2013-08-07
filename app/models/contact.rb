# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gender     :string(255)
#  age        :string(255)
#  favorite   :string(255)
#

class Contact < ActiveRecord::Base
  attr_accessible :content, :email, :name, :title, :gender, :age, :favorite

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :title, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 4000 }
end
