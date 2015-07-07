definitions
deffb02d8cffeb77540b0db23ee748e30c0
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 February 2014 9:59:45 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'fb02d8cf-feb7-7540-b0db-23ee748e30c0'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj |  
	obj isVariableBinding
		ifTrue: [{
			#text -> obj key asString.
			#icon -> UiFugueIcons blueDocumentSmallIcon}]
		ifFalse: [	{
			#editable -> true.
			#text -> [ViLabelService doObject: obj]
			      -> [:newName | (RBRenameClassRefactoring
"	model: (RBNamespace onEnvironment: (RBPackageEnvironment new
		packages: {PackageOrganizer default packageOfClass: obj}))"
	rename: obj to: newName asString asSymbol) primitiveExecute; explore].
			#icon -> (ViIconService doObject: obj)}]]'); add: (#mapType->#each); add: (#block->[:obj |  
	obj isVariableBinding
		ifTrue: [{
			#text -> obj key asString.
			#icon -> UiFugueIcons blueDocumentSmallIcon}]
		ifFalse: [	{
			#editable -> true.
			#text -> [ViLabelService doObject: obj]
			      -> [:newName | (RBRenameClassRefactoring
"	model: (RBNamespace onEnvironment: (RBPackageEnvironment new
		packages: {PackageOrganizer default packageOfClass: obj}))"
	rename: obj to: newName asString asSymbol) primitiveExecute; explore].
			#icon -> (ViIconService doObject: obj)}]]); yourself)