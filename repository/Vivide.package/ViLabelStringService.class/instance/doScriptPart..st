vivide - kernel
doScriptPart: aScriptPart

	^ aScriptPart nextLabel ifNil: [
		aScriptPart isSpecial
			ifTrue: ['#', aScriptPart id]
			ifFalse: [
				aScriptPart isPropertyExtraction
					ifTrue: [(aScriptPart valueOfProperty: #headerText)
						ifNil: [(aScriptPart sourceCodeShort ifNil: ['']) escapeHtmlText]
						ifNotNil: [:txt | '\<', txt, '\>']]
					ifFalse: [(aScriptPart sourceCodeShort ifNil: ['']) escapeHtmlText]]]