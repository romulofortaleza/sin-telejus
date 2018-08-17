class Role < ApplicationRecord
    has_many :activity_roles
    has_many :activities, through: :activity_roles

    validates :description, presence: true

    def get_menu_activities
        activities.where(isMenu: true, activity_id: nil).order(:order)
    end

end
