module ApplicationHelper

  def flash_message
    display_flash(:alert) || display_flash(:notice)
  end

  private

  def display_flash(type)
    if flash[type]
      content_tag :div, class: type, id: "message" do
        content_tag :p do
          flash[type]
        end
      end
    end
  end

end
