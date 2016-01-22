definitions
def77f9848509d8e34cbb69a66a7a0d4a45
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'77f98485-09d8-e34c-bb69-a66a7a0d4a45').
(#inputKind -> PackageInfo).
(#mapType -> #each).
(#outputKind -> ViFlagComment).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:38:09 pm')})).
(#sourceCode -> '[:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})