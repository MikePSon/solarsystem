module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Solarsystem"
    end
  end
end
