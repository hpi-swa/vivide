as yet unclassified
referenceTo: anotherScriptPart

	^ ('[:in :out | in ifNotEmpty: [out add: [{1}] value]]' format: {anotherScriptPart id printString}) asRawScript
		isReference: true;
		adoptOrganization: anotherScriptPart organization;  
		yourself