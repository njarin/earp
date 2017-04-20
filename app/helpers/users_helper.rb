module UsersHelper
  def convert_role(role)
    return "owner" if role == "University faculty"
    return "staff" if role == "EA staff"
  end
end
