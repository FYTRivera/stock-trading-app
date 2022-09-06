class Trader < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :stocks, join_table: 'stocks_traders'
  has_many :transactions

  # test for has_many_through
  has_many :stocks, through: :transactions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :confirmable
  enum role: [:trader, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :trader
  end

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
end
