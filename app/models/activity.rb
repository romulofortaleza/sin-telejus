class Activity < ApplicationRecord
  has_many :activity_roles
  has_many :role, through: :activity_roles
  has_many :duties

  has_one :activity
  has_many :activities

  belongs_to :activity

  def self.all_not_activity(role_id)
    Activity.where.not(id: Activity.joins(:activity_roles).where(activity_roles: {role_id: role_id}))
  end

  def self.all_roots
    Activity.where(isMenu: true, activity_id: nil).order(:description)
  end

  def children
    activities.where(isMenu: true).order(:order)
  end

  def validate_activity_role
    if activity_roles.count > 0
      errors[:base] << I18n.t("activities.destroy.failure.roles")
      throw :abort
    end
  end
end
