definitions
def8a71e0741c1481459e083c3261d5d008
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 10:17:33 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'8a71e074-1c14-8145-9e08-3c3261d5d008'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:part1 :part2 | part1 isQueryStep ifTrue: [true] ifFalse: [
	"Ignore concrete temp names."
	part1 block decompile decompileString <= part2 block decompile decompileString]]'); add: (#mapType->#twoArgs); add: (#block->[:part1 :part2 | part1 isQueryStep ifTrue: [true] ifFalse: [
	"Ignore concrete temp names."
	part1 block decompile decompileString <= part2 block decompile decompileString]]); yourself)