class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :items
  has_many :categories

  with_options presence: true do
    validates :nickname
    validates :password, format: { with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/, message: 'Include both letters and numbers' }
  end
end
