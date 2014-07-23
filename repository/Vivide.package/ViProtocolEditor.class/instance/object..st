accessing - object
object: aProtocol

	protocol := aProtocol.

	aProtocol ifNotNil: [:p |
		self theClass: p theClass].
	
	self clear.