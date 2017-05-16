class Contact < ApplicationRecord

  def easy_strftime
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_johns

    render "all_johns.html.erb"
  end

  def japan_code
    return "+81" + phone_number.to_s
  end


end
