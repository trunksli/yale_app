RSpec::Matchers::define :have_title do |text|
  match do |page|
    Capybara.string(page.body).has_selector?('title', text: text)
  end
end

def full_title(page_title)
	base_title = "Yale1on1"
	if page_title.empty?
		base_title
	else 
		"#{base_title} | #{page_title}"
	end
end
