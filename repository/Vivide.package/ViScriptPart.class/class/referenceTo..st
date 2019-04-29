as yet unclassified
referenceTo: anotherScriptPart

	self flag: #suspicious. "mt: Why is the check for input objects needed? Target script will not fire anyway!"
	^ ('[:in :out | in ifNotEmpty: [out add: [{1}] value]]' format: {anotherScriptPart id printString}) asScript in: [:result |
		result notifier doSilently: [result isReference: true].
		
		anotherScriptPart isDefault ifFalse: [
			result adoptOrganization: anotherScriptPart organization].
		
		result]