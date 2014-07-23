as yet unclassified
onObjectChange: objectKindEvent

	self flag: #performance. "mt: Defer update if page is not visible."
	self artifactContainers do: [:editor |
		(editor isObject: objectKindEvent item) ifTrue: [
			editor hasUnacceptedChanges ifFalse: [editor clear]]].