changes
onMethodChange: methodKindEvent

	| locationString affectedEditors |
	affectedEditors := self artifactContainers select: [:container | container isAffectedBy: methodKindEvent].
	affectedEditors ifEmpty: [^ self "ignore"].
	
	locationString := methodKindEvent itemClass name, '\>\><b>', methodKindEvent itemSelector asString, '</b>'.
	methodKindEvent isModified
		ifTrue: [self showInformation: ('Modified ', locationString) asHtmlText].
	methodKindEvent isRemoved
		ifTrue: [self showInformation: ('Removed ', locationString) asHtmlText].
	methodKindEvent isAdded
		ifTrue: [self showInformation: ('Added ', locationString) asHtmlText].
	methodKindEvent isRecategorized
		ifTrue: [self showInformation: ('Recategorized ', locationString, ' into <b>', methodKindEvent itemProtocol, '</b>') asHtmlText].

	affectedEditors do: [:editor |
		methodKindEvent isRemoved
			ifTrue: [editor closeWithDeleteAnimation]
			ifFalse: [editor resetSource]].