accessing - object
object: protocolOrAssociation

	(protocolOrAssociation isKindOf: Association)
		ifTrue: [protocol := ViProtocol named: protocolOrAssociation value inClass: protocolOrAssociation key]
		ifFalse: [protocol := protocolOrAssociation].

	protocol ifNotNil: [:p | self theClass: p theClass].
	
	self clear.