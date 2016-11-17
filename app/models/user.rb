class User < ActiveRecord::Base
  before_save :check_is_admin

  validates :email, presence: true, uniqueness: true

  def check_is_admin
    if "wlgriffiths@gmail.com" == email
      is_admin = true
    else
      is_admin = false
    end
  end

  has_secure_password

end
