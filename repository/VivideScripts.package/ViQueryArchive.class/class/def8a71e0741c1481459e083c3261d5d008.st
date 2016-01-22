definitions
def8a71e0741c1481459e083c3261d5d008
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:part1 :part2 | part1 isQueryStep ifTrue: [true] ifFalse: [
	"Ignore concrete temp names."
	part1 block decompile decompileString <= part2 block decompile decompileString]]).
(#class -> ViQueryMapDefinition).
(#id -> #'8a71e074-1c14-8145-9e08-3c3261d5d008').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 10:17:33 am')})).
(#sourceCode -> '[:part1 :part2 | part1 isQueryStep ifTrue: [true] ifFalse: [
	"Ignore concrete temp names."
	part1 block decompile decompileString <= part2 block decompile decompileString]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})