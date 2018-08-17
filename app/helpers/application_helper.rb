module ApplicationHelper
    def is_active_controller(controller_name, class_name = nil)
        if params[:controller] == controller_name
         class_name == nil ? "active" : class_name
        else
           nil
        end
    end

    def is_active_root_menu(root, class_name = nil)
        if root.activities.count > 0
            if root.activities.ransack(action_eq: "/" + params[:controller]).result.count > 0
                class_name == nil ? "active" : class_name
            end
        else
           current_page?(root.action)
        end
    end

    def is_active_action(action_name)
        split = action_name.split("/").reject{|c| c.empty? }
        if split.count == 1 && params[:action] == "index"
            params[:controller] == split[0] ? "active" : nil
        else
            params[:action] == split[1] ? "active" : nil
        end
    end

    def handle_field(field)
        field.blank? ? "-" : field
    end

    def handle_field_boolean(field)
        field.blank? ? "Não" : (field ? "Sim" : "Não")
    end
end
