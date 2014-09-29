item model - properties
text

	^ [(self baseObject isBlock
		ifTrue: [ViTextStyler new styledTextFor: self baseObject decompile decompileString asText]
		ifFalse: [self baseObject asExplorerString withBlanksTrimmed truncateWithElipsisTo: 500])
			]
		on: Error
		do: [:err | ('<font color="#FF0000">!? ', err asString escapeHtmlText, ' !?</font>') asHtmlText]