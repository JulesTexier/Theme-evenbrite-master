class Attendance < ApplicationRecord
    belongs_to :event
    belongs_to :participant, class_name: 'User'

    # belongs_to :event
    # belongs_to :attendant, class_name: "User"
end
