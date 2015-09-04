
class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  # set different User roles
  ROLES = %i[admin moderator student guest]

  # validates password and email
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, presence: true, email: true, uniqueness: true



  after_create :create_profile


  has_many :ratings
  has_one :profile, dependent: :destroy
end
