definitions
def3835be18aea4124ea7f07455e1534b44
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'3835be18-aea4-124e-a7f0-7455e1534b44').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 11:06:30 am')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})