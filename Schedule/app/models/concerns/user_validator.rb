class UserValidator < ActiveModel::Validator
def validate(record)
matching_user = User.find_by(username: record.username)
if matching_user
record.errors[:base] << "that username is already taken. Please choose a different one."
end #if
end #validate
end #UserValidator
