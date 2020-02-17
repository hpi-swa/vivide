browsing
browseMessageNames: pattern
	"Squeak's smart search"
	
	| messages |
	VivideLight active ifNil: [^ super browseMessageNames: pattern].
	
	self flag: #refactor.
	messages := MessageNames new computeSelectorListFrom: pattern.
	
	^ messages size < 10
		ifTrue: [#implementors openScriptWith: messages]
		ifFalse: [#defaultPropertiesExtended openScriptWith: messages]