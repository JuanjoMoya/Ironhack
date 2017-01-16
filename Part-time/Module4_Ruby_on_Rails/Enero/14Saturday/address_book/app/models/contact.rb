class Contact < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true

  # validates_format_of :phone_number, :with => /\A\d{3}\d{3}\d{3}\z/
  validates :phone_number, format: { with: /\A\d{3}\d{3}\d{3}\z/, message: "incorrect value for phone number" }

  # validates_format_of :email_address, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :email_address, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, message: "incorrect format for email address" }

end
