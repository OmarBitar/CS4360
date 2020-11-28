class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :coverage_rules, :dependent => :destroy
  has_many :employees, :dependent => :destroy
  has_many :roles, :dependent => :destroy
  has_many :schedules, :dependent => :destroy
  has_many :shifts, :dependent => :destroy

  validates :company_name, presence: true, length: { minimum: 2, maximum: 15 }
  validates :password_requirements_are_met, presence: true, if: :should_validate?

  def should_validate?
    new_record? || password.present?
  end

  # password_requirement code is referenced
  # from: https://stackoverflow.com/a/50334086/11379938
  def password_requirements_are_met
    rules = {
        " must contain at least one lowercase letter"  => /[a-z]+/,
        " must contain at least one uppercase letter"  => /[A-Z]+/,
        " must contain at least one digit"             => /\d+/,
        " must contain at least one special character" => /[^A-Za-z0-9]+/
    }

    rules.each do |message, regex|
      errors.add( :password, message ) unless password.match( regex )
    end
  end
end
