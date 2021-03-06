class User < ApplicationRecord
  # Direct associations

  has_many   :flights,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :phone_number, :uniqueness => true

  validates :phone_number, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
