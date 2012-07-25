# A file for RSpec utilities

# Essentially a duplicate of app/helpers/application_helpers.rb, for now
def full_title(page_title)
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end
