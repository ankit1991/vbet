class Account < ActiveRecord::Base
  # Associations
  belongs_to :user

  # Validations
  validates :account_no, presence: true, uniqueness: { case_sensitive: false, allow_blank: true}
  validates :balance, presence: true, numericality: { greater_than_or_equal_to: 0 }

end
