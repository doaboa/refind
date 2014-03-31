############
# ZURB Foundation
############
require "zurb-foundation"

############
# Livereload
############
activate :livereload

############
# Compass
############

# Change Compass configuration
compass_config do |config|
  http_path = "/"
  config.output_style = :extended
end

############
# Page options, layouts, aliases and proxies
############

# Per-page layout changes:

# With no layout
# page "/path/to/file.html", :layout => false

# XML
page "crossdomain.xml", :layout => false

# TXT
page "robots.txt", :layout => false
page "humans.txt", :layout => false

# HTML
page "404.html", :layout => false

# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout

# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end



############
# Helpers
############

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
helpers do
# Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '&ndash;' + end_year.to_s
    end
  end

# Holder.js image placeholder helper
#  def img_holder(opts = {})
#    return "Missing Image Dimension(s)" unless opts[:width] && opts[:height]
#    return "Invalid Image Dimension(s)" unless opts[:width].to_s =~ /^\d+$/ && opts[:height].to_s =~ /^\d+$/
#
#    img  = "<img data-src=\"holder.js/#{opts[:width]}x#{opts[:height]}/auto"
#    img << "/#{opts[:bgcolor]}:#{opts[:fgcolor]}" if opts[:fgcolor] && opts[:bgcolor]
#    img << "/text:#{opts[:text].gsub(/'/,"\'")}" if opts[:text]
#    img << "\" width=\"#{opts[:width]}\" height=\"#{opts[:height]}\">"
#
#    img
#  end

end



############
# Miscellany
############

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Minify HTML
  # activate :minify_html

  # Enable Pretty URLs
  activate :directory_indexes

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  activate :relative_assets
  set :relative_links, true
  
  # Create favicon/touch icon set from source/favicon_base.png
  # activate :favicon_maker

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end