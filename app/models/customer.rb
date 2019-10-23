class Customer < ApplicationRecord
  has_many :stoves, dependent: :destroy
  before_save { self.email = email.downcase if email.present? }
  
  validates :customer_code, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 100 },
                    allow_nil: true,
                    format: { with: VALID_EMAIL_REGEX }
  validates :phone_number, format: { with: /\A\d{10}\z/ }, allow_nil: true
  validates :mobile_number, format: { with: /\A\d{10,11}\z/ }, allow_nil: true
  validates :zip, format: { with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/ }, allow_nil: true
  
  def self.search(search)
    if search
      where(['name LIKE ? OR email LIKE ? OR phone_number LIKE ? OR mobile_number LIKE ? OR address LIKE ?',
              "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      all
    end
  end
end
