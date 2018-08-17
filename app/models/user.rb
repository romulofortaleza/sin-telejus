class User < ActiveRecord::Base
  belongs_to :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable,
         :recoverable, :rememberable, :trackable

  validates :username, presence: true, uniqueness: true
  validates :role_id, presence: true

  before_validation :get_ldap_email

  def get_ldap_email
    email = Devise::LDAP::Adapter.get_ldap_param(self.username, "mail")
    if (email.nil?)
      self.email = "#{self.username}@tjce.jus.br"
    else
      self.email = email.first
    end

    name = Devise::LDAP::Adapter.get_ldap_param(self.username, "cn")
    if name
      self.name = Devise::LDAP::Adapter.get_ldap_param(self.username, "cn").first.force_encoding("utf-8")
    end
  end

  # hack for remember_token
  def authenticatable_token
    Digest::SHA1.hexdigest(email)[0, 29]
  end
end
