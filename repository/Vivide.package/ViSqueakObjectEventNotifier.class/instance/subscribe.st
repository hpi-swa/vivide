as yet unclassified
subscribe

	self object
		when: self event
		send: #notifyEvent:
		to: self
		with: nil "Fall-back".