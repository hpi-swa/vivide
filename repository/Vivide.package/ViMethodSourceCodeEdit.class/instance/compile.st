evaluation
compile

	self checkMethodVersion ifFalse: [^ false].

	[
		(self theClass
			compile: self theText
			classified: self protocol) in: [:newSelector |
				"Bypass system change events. Update method directly."
				self method: self theClass >> newSelector] .
		^ true
	]
		on: SyntaxErrorNotification "Manual catch to disable interactive compilation."
		do: [:err |
			self warningSent: 'Failed. ', (err asString withNoLineLongerThan: 30).
			self notify: err errorMessage at: err location in: err messageText.
			^ false]