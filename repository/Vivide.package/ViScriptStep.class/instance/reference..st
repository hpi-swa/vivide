as yet unclassified
reference: script
	"Only reasonable if the result of the definition is an ID. May require the correct objects. See interpreter."
	
	| newCode referenceId |
	referenceId := self referenceId.
	self assert: referenceId notNil.
	
	self sourceCode: (self sourceCode copyReplaceAll: referenceId storeString with: script id storeString).