as yet unclassified
doScriptPart: aScriptPart

	^ aScriptPart nextLabel ifNil: [
		aScriptPart isPropertyStep
			ifTrue: [(aScriptPart valueOfProperty: #headerText)
				ifNil: [ViTextStyler new styledTextFor: aScriptPart sourceCodeShort asText]
				ifNotNil: [:txt | '\<', txt, '\>']]
			ifFalse: [ViTextStyler new styledTextFor: aScriptPart sourceCodeShort asText]]