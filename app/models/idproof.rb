class Idproof < ApplicationRecord
    belongs_to :merchant
    mount_uploader :document, ImageUploader
    enum :doctype, { "Adhar Card": "aadhar_card", "Pan Card": "pen_card"},_default: :"Adhar Card"
    enum :status, { "Pending": "Pending", "Accept": "Accept", "Reject": "Reject"},_default: :"Pending"
end