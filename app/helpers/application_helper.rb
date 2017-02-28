module ApplicationHelper
	def gravatar_for(user, options = { size: 80})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		#gravatar_url = "https://s.gravatar.com/avatar/090a9d6a0f661c3612a3ffd09923367f?s=80"
		image_tag(gravatar_url, alt: user.username, class: "img-circle")
	end
end
