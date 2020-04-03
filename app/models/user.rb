class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || crypted_password_changed? } # or you can use changes[:crypted_password] instead of crypted_password_changed? if you wish
  # the confirmation setting checks whether the password and password_confirmation match
  validates :password, confirmation: true, if: -> { new_record? || crypted_password_changed? }
  validates :password_confirmation, presence: true, if: -> { new_record? || crypted_password_changed? }

  validates :email, presence: true, uniqueness: true
  # validates :reset_password_token, presence: true, uniqueness: true
end
