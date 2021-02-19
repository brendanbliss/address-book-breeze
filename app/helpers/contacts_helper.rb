module ContactsHelper
  def contact_image(contact)
    if contact.contact_image.attached? && contact.contact_image.content_type.in?(%('image/jpeg image/png'))
      contact.contact_image.variant(resize: "300x300")
    else
      "default_contact_image.png"
    end
  end
end
