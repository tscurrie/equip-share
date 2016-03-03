class User < ActiveRecord::Base
  has_secure_password


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])

  end
  validates :email,
  presence: true,
  uniqueness: true,
  format: { with: /@/ },
  length: { minimum: 6, message: 'Must be at least 6 characters and include an @ symbol'  }

  validates :password,
  presence: true,
  length: { minimum: 6, message: 'Must be at least 6 characters in length' }

  validates :first_name, presence: true

  validates :last_name, presence: true
end
