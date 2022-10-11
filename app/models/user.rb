class User < ApplicationRecord
  rolify
  actable
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  #validates :actable_id, presence: false
  #validates :actable_type, presence: false
  def owner_of?(comment)
      if comment.commenter == self.name + "   " +self.lastName
        return true
      else
        return false
      end
  end

  def self.update_role(user_id, role_id,action)
    @user = User.find(user_id)
    @role = Role.find(role_id)
    if action.eql?("add")
      @user.add_role @role.name
    else
      @user.remove_role @role.name
    end
    @user.save!
  end

  def getRoles
    roles = ""
    self.roles.each do |role|
      roles += " " + role.name
    end
    roles
    end
=begin
  def self.set_roles
    @users = User.all
    admin = %w[fadjaarnaud@yahoo.fr zebazeprudy@yahoo.fr]
    protagonist = %w[arnaud.nguembafadja@unife.it ngmrnd@unife.it]
    @users.each do |user|
      if admin.include?(user.email)
        user.add_role :admin
        user.save!
      end

      if protagonist.include?(user.email)
        user.add_role :protagonist
        user.save!
      end
    end

    end
=end
end
