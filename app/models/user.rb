class User < ApplicationRecord
  has_many :roles
  has_many :projects, through: :roles
  has_many :sections
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  acts_as_messageable

  def mailboxer_email(object)
    #Check if an email should be sent for that object
    #if true
    return nil
    #if false
    #return nil
  end

end
