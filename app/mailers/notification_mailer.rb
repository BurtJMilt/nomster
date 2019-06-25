class NotificationMailer < ApplicationMailer
	default from: "no-reply@nomsterapp.com"

	def comment_add
		mail(to: "burtmiltenberger.jm@gmail.com",
			subject: "A comment has been added to your place")
	end
end
