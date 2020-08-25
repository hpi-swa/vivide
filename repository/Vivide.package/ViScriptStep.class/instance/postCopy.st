copying
postCopy

	super postCopy.
	
	self label ifNotNil: [:lbl | self setLabel: 'Copy of ', lbl].
	
	"Also copy my definition."
	self setDefinition: self definition copy.
	self definition organization: self organization.
	self definition register.  

	"... to be sure ..."
	self breakLocalCycle.

	"Copy the next step."
	self hasNext ifTrue: [
		self setNext: self next copy.
		self next organization: self organization.
		self next register].

	"Copy references?"
	self flag: #todo. "mt: Consider #before and #after."
	"??? #copyOf holds old id ???"