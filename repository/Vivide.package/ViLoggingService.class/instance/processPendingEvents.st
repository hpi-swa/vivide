process
processPendingEvents

	| nextEvent |
	[nextEvent := self pendingEvents nextOrNil]
		whileNotNil: [
			nextEvent at: #'_id' put: (UUID new asString copyWithoutAll: '-').
			"Exctract all forms as attachments."
			self outgoingAttachments add: (nextEvent at: #'_id') -> OrderedCollection new.
			nextEvent copy keysAndValuesDo: [:key :value |
				value isForm ifTrue: [
					self outgoingAttachments last value add: key -> value.
					nextEvent removeKey: key]].  
			"Schedule the rest as regular document."
			self outgoingDocuments add: nextEvent].