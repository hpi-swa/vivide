templates - support
generateEmptyScriptCodeFor: someClassesOrNils

	^ someClassesOrNils
		ifEmpty: [
			'["Type code here..."]']
		ifNotEmpty: [:someClasses |
			'[{1}| "Type code here..."]' format: {
				self generateBlockVarDeclarationFor: someClasses}]