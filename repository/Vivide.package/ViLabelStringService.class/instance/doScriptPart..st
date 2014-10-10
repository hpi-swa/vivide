as yet unclassified
doScriptPart: aScriptPart

	^ aScriptPart nextLabel ifNil: [
		aScriptPart isPropertyStep
			ifTrue: [(aScriptPart valueOfProperty: #headerText)
				ifNil: [(aScriptPart sourceCodeShort ifNil: ['']) escapeHtmlText]
				ifNotNil: [:txt | '\<', txt, '\>']]
			ifFalse: [(aScriptPart sourceCodeShort ifNil: ['']) escapeHtmlText]]