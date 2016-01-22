definitions
deffef44613dcb6db48b26e678159464e39
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:pkg | pkg classes intersection: ((SystemNavigation allUnusedClassesWithout: {{}.{}}) collect: [:nm | Smalltalk at: nm])]).
(#class -> ViQueryMapDefinition).
(#id -> #'fef44613-dcb6-db48-b26e-678159464e39').
(#inputKind -> PackageInfo).
(#mapType -> #each).
(#outputKind -> ClassDescription).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:37:43 pm')})).
(#sourceCode -> '[:pkg | pkg classes intersection: ((SystemNavigation allUnusedClassesWithout: {{}.{}}) collect: [:nm | Smalltalk at: nm])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})