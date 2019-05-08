as yet unclassified
logScript: string receiver: recvr context: ctxt result: obj

	| selfSent receiverIsCollection newDef similarDef |
	"(string withBlanksTrimmed includes: Character space)
		ifFalse: [^ self]."
	
	"No debugging do-its."
	"ctxt ifNotNil: [^ self]."
	
	VivideLight active ifNil: [^ self].

	selfSent := string includesSubstring: 'self' caseSensitive: true.
	receiverIsCollection := recvr isList.
	
	self flag: #suspicious. "mt: Not so easy to hide collections, eh?"
	(receiverIsCollection and: [recvr isEmpty])
		ifTrue: [^ self].

	newDef := ViQuerySnippetDefinition new.
	newDef notifier doSilently: [
		newDef  
			sourceCode: string;
			receiverIsCollection: selfSent & receiverIsCollection;
			inputKind: (selfSent ifFalse: [UndefinedObject]
				ifTrue: [receiverIsCollection
					ifTrue: [(ViScriptDefinition collectBaseClassesForContext: recvr) first]
					ifFalse: [recvr class]])].
	
	newDef retain.