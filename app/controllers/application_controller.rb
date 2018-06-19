before_action :authenticate_user!, if: proc { request.controller_class.parent == Api }

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
end
