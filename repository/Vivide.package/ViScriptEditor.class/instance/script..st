accessing
script: aString
	"Reset the whole script to be edited."

	scriptPointer := scriptPointer ifNotNil: [:p |
		"Keep the view stable."
		self flag: #useEditDistance. "mt: Maybe we can also tolerate minor ediits an keep the view stable by just adjusting the current script pointer?"
		([(RBParser parseExpression: (aString copyFrom: p first to: p last)) in: [:node | 
				node isBlock or: [(node isMessage
					and: [node selector = #'->'])
					and: [node arguments first isArray] ]]]
			on: Error do: [:err | false]) 
			ifTrue: [p]
			ifFalse: [nil "reset"]].

	script := aString.

	(RBParser parseExpression: script) in: [:n |
		self
			updateMapFor: n;
			updateMapIndex: n].   
	self updateVisibleSourceCode.