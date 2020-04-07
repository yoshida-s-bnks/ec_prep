class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many  :address

  validates :password, length: { minimum: 3 }, if: -> { new_record? || crypted_password_changed? } # or you can use changes[:crypted_password] instead of crypted_password_changed? if you wish
  # the confirmation setting checks whether the password and password_confirmation match
  validates :password, confirmation: true, if: -> { new_record? || crypted_password_changed? }
  validates :password_confirmation, presence: true, if: -> { new_record? || crypted_password_changed? }

  validates :email, presence: true, uniqueness: true
  # validates :phone_num, presence: true, format: { with: /\d{2,4}\-?\d{2,4}]\-?\d{4}/i }
  validates :phone_num, presence: true, format: { with: /\d\-/i }
  # validates :reset_password_token, presence: true, uniqueness: true
end
