module ApplicationHelper
  def svg_tag(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def current_class?(nav_path)
    request.path == nav_path ? 'kid-menu-item active' : 'kid-menu-item'
  end
end
