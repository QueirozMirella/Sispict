# frozen_string_literal: true

module DeviseHelper
  def resource_name
    :usuario
  end

  def resource
    @resource ||= Usuario.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:usuario]
  end

  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-danger"> <button type="button"
    class="close" data-dismiss="alert">x</button>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end
