module WelcomeHelper

	def selected_page (page_name)
		current_uri = request.env['PATH_INFO']

		if current_uri.ends_with? page_name
			'class=selected'
		else
			""
		end
	end

end
