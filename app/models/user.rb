<<<<<<< HEAD
# validates email and password
class User < ActiveRecord::Base
  authenticates_with_sorcery!

=======


class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  # set different User roles
  ROLES = %i[admin moderator student guest]

  # validates password and email
>>>>>>> c386c72ced64d5fa2ce7e778207d798c627a474d
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, presence: true, email: true, uniqueness: true

  ROLES = %i[admin moderator student guest]



  has_many :ratings


end
