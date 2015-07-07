definitions
def3835be18aea4124ea7f07455e1534b44
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 11:06:30 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'3835be18-aea4-124e-a7f0-7455e1534b44'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}]); yourself)