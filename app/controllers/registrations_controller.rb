# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)

    if resource.save
      yield resource if block_given?
      if resource.active_for_authentication?
        active_for_authentication
      else
        no_active_for_authentication?
      end
    else
      not_save_resource
    end
  end

  private

  def active_for_authentication
    set_flash_message :notice, :signed_up if is_flashing_format?
    sign_up(resource_name, resource)
    respond_with resource, location: after_sign_up_path_for(resource)
  end

  def no_active_for_authentication
    set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
    expire_data_after_sign_in!
    respond_with resource, location: after_inactive_sign_up_path_for(resource)
  end

  def not_save_resource
    clean_up_passwords resource
    resource.errors.full_messages.each { |message| flash[message] = message } # Rails 4 simple way
    redirect_to root_path
  end
end
