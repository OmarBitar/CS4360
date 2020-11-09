class User < ApplicationRecord
  has_secure_password
  validates :name, :email ,:password_digest,:password_confirmation , :security_question,
  :security_answer, presence: true

  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
