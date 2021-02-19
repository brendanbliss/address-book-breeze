class Contact < ApplicationRecord
  belongs_to :user

  has_one_attached :contact_image, dependent: :destroy

  validates :first_name, :last_name, presence: true
  validate :image_type

  def full_name
    first_name + ' ' + last_name
  end

  private

    def image_type
      if contact_image.attached? == true && !contact_image.content_type.in?(%('image/jpeg image/png'))
        errors.add(:contact_image, 'needs to be JPEG or PNG')
      end
    end
end
