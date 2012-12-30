module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Returns the HTML Code for the Page Header
  def page_header(head)
  	"<header class='jumbotron subhead' id='overview'>\
		<div class='row-fluid'>\
			<div class='span12 page-header'>\
				<h1>#{head}</h1>\
			</div>\
		</div>\
	</header>".html_safe
  end
end
