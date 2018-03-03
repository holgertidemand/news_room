module ApplicationHelper

  def toast_for(resource)
    message = content_tag(:strong, "#{pluralize(resource.errors.count, 'error')} prohibited this #{resource.class.name.downcase} from being saved")
    message += content_tag(:ul) do
      resource.errors.full_messages.map do |item|
        concat(content_tag(:li, item))
      end
    end

    flash.now[:error] = message.html_safe
  end
end