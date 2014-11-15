definitions
def23cf0ae6f7f5794b8d4dd25816a58874
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 November 2014 1:48:33 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'23cf0ae6-f7f5-794b-8d4d-d25816a58874'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | obj isCompiledMethod ifFalse: [{}] ifTrue: [obj linesOfCode in: [:loc | {
	#balloonText -> (loc asString, '' lines of code'').
	#icon -> (loc < 15 ifTrue: [nil] ifFalse: [
			loc < 30 ifTrue: [UiFugueIcons fireIcon] ifFalse: [
				UiFugueIcons fireBigIcon]])}]]]'); add: (#mapType->#each); add: (#block->[:obj | obj isCompiledMethod ifFalse: [{}] ifTrue: [obj linesOfCode in: [:loc | {
	#balloonText -> (loc asString, ' lines of code').
	#icon -> (loc < 15 ifTrue: [nil] ifFalse: [
			loc < 30 ifTrue: [UiFugueIcons fireIcon] ifFalse: [
				UiFugueIcons fireBigIcon]])}]]]); yourself)