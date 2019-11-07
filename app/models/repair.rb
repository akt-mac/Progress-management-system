class Repair < ApplicationRecord
  
  def self.search(search)
    if search
      where(['customer_name LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
