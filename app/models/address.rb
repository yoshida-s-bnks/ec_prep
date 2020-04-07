class Address < ApplicationRecord
  belongs_to  :user

  include JpPrefecture
  jp_prefecture :prefecture_code

  validates :prefecture_code, presence: true
  validates :address_city, presence: true
  validates :address_street, presence: true
  # validates :address_building, presence: true

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_code)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
