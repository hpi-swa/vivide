definitions
def119de777f025874c9828ec6ead11f625
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'7 November 2013 11:13:18 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'119de777-f025-874c-9828-ec6ead11f625'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj |  
	obj isVariableBinding
		ifTrue: [{
			#text -> obj value key asString.
			#icon -> (obj key isMeta
				"inst vars"
				ifFalse: [UiSilkIcons bulletBlueIcon] ifTrue: [
					obj value key first isUppercase
						"real class vars"
						ifTrue: [UiSilkIcons bulletBlackIcon]
						"inst vars of meta class"
						ifFalse: [UiSilkIcons bulletPinkIcon]]
				)
			}]
		ifFalse: [	{#icon -> (ViIconService doObject: obj)},
			(obj isCompiledMethod
				ifFalse: [{#text -> (ViLabelService doObject: obj)}]
				ifTrue: [{ "editable selector"
					#editable -> true.
					#text -> [ViLabelService doObject: obj]
					      -> [:sel | (RBRenameMethodRefactoring
	model: (RBNamespace onEnvironment: (RBPackageEnvironment new
		packages: {PackageOrganizer default packageOfMethod: obj methodReference}))
	renameMethod: obj selector
	in: obj methodClass
	to: sel asString asSymbol
	permutation: (1 to: sel asString asSymbol numArgs)) primitiveExecute; explore].}])]]'); add: (#mapType->#each); add: (#block->[:obj |  
	obj isVariableBinding
		ifTrue: [{
			#text -> obj value key asString.
			#icon -> (obj key isMeta
				"inst vars"
				ifFalse: [UiSilkIcons bulletBlueIcon] ifTrue: [
					obj value key first isUppercase
						"real class vars"
						ifTrue: [UiSilkIcons bulletBlackIcon]
						"inst vars of meta class"
						ifFalse: [UiSilkIcons bulletPinkIcon]]
				)
			}]
		ifFalse: [	{#icon -> (ViIconService doObject: obj)},
			(obj isCompiledMethod
				ifFalse: [{#text -> (ViLabelService doObject: obj)}]
				ifTrue: [{ "editable selector"
					#editable -> true.
					#text -> [ViLabelService doObject: obj]
					      -> [:sel | (RBRenameMethodRefactoring
	model: (RBNamespace onEnvironment: (RBPackageEnvironment new
		packages: {PackageOrganizer default packageOfMethod: obj methodReference}))
	renameMethod: obj selector
	in: obj methodClass
	to: sel asString asSymbol
	permutation: (1 to: sel asString asSymbol numArgs)) primitiveExecute; explore].}])]]); yourself)