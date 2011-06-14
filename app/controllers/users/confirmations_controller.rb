class Users::ConfirmationsController < Devise::ConfirmationsController
  
  # POST /resource/confirmation
  def create
    self.resource = resource_class.send_confirmation_instructions(params[resource_name])

    if resource.errors.empty?
      set_flash_message(:notice, :send_instructions) if is_navigational_format?
      respond_with resource, :location => users_path
    else
      respond_with_navigational(resource){ render_with_scope :new }
    end
  end

end
