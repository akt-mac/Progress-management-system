class Stove < ApplicationRecord
  validates :signup_at, presence: true
  validates :customer_name, presence: true, length: { maximum: 50 }
  validates :phone_number, format: { with: /\A\d{10}\z/ }, allow_blank: true
  validates :mobile_number, format: { with: /\A\d{10,11}\z/ }, allow_blank: true
  validates :address, presence: true, length: { maximum: 100 }
  
  def self.search(search)
    if search
      where(['customer_name LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
