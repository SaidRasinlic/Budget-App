module ApplicationHelper
  def avatar_url(user)
    user.avatar.attached? ? user.avatar.variant(resize: '300x300') : 'https://png.pngitem.com/pimgs/s/495-4953903_google-contacts-icon-facebook-messenger-round-icon-hd.png'
  end

  def bootstrap_class_for(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end
end

# https://www.portmelbournefc.com.au/wp-content/uploads/2022/03/avatar-1.jpeg
