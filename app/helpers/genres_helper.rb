module GenresHelper

    def show_child(child, pos = '')
        html = "<tr>"
        html += "<td> #{pos} #{child.name} </td>"
        html += "<td> #{link_to 'Show', child} </td>"
        html += "<td> #{link_to 'Edit', edit_genre_path(child)} </td>"
        html += "<td>  #{link_to 'Destroy', child, method: :delete, data: { confirm: 'Are you sure?' }} </td>"
        html += "</tr>"
        if child.children
            child.children.each do |child|
                pos += "*"
                html += "#{show_child(child, pos)}"
            end
        end
        html.html_safe
    end
end
