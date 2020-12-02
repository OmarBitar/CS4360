class Users::SessionsController < Devise::SessionsController
  def new
    super do |resource|
    end
  end
end