as yet unclassified
referenceTo: anotherScriptPart

	^ ('[:in :out | in ifNotEmpty: [out add: [{1}] value]]' format: {anotherScriptPart id printString}) asRawScript in: [:result |
		result isReference: true.
		
		anotherScriptPart isDefault ifFalse: [
			result adoptOrganization: anotherScriptPart organization].
		
		result]