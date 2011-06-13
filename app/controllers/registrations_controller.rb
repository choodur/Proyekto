class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    build_resource
    
    if resource.save
      redirect_to users_path
    else
      render :new
    end
  end
end 
