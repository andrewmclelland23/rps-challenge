module HTMLBuilder

  def self.array_to_list(array)
    html_builder = "<ol>"
    array.each do |item|
      html_builder += "<li>#{item}</li>"
    end
    html_builder += "</ol>"
  end

  def self.array_to_drop_down(array)
    html_builder = ""
    array.each do |hash|
      html_builder += "<option value='#{hash[:value]}'>#{hash[:visible_name]}</option>"
    end
    html_builder
  end
end
