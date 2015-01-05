as yet unclassified
logScript: string receiver: recvr context: ctxt result: obj

	| selfSent receiverIsCollection newDef similarDef |
	"(string withBlanksTrimmed includes: Character space)
		ifFalse: [^ self]."
	
	"No debugging do-its."
	"ctxt ifNotNil: [^ self]."

	selfSent := string includesSubstring: 'self' caseSensitive: true.
	receiverIsCollection := ViQueryInterpreter isCollection: recvr.
	
	self flag: #suspicious. "mt: Not so easy to hide collections, eh?"
	(receiverIsCollection and: [recvr isEmpty])
		ifTrue: [^ self].
	
	newDef := ViQuerySnippetDefinition new
		sourceCode: string;
		receiverIsCollection: selfSent & receiverIsCollection;
		inputKind: (selfSent ifFalse: [UndefinedObject]
			ifTrue: [receiverIsCollection
				ifTrue: [(ViQueryStepDefinition collectBaseClassesForContext: recvr) first]
				ifFalse: [recvr class]]).
	
	similarDef := ViQueryOrganizer active snippetDefinitions
		detect: [:def | (def method = newDef method
			and: [def inputKind = newDef inputKind])
			and: [def receiverIsCollection = newDef receiverIsCollection]]
		ifNone: [newDef register. ^ self].

	self flag: #merge. "mt: Merge similarDef with newDef."