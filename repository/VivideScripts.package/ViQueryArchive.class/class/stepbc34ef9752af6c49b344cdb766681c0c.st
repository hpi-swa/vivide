steps
stepbc34ef9752af6c49b344cdb766681c0c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:behaviors | SystemNavigation allCallsOn: #flag: fromBehaviors: behaviors sorted: true] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'ee1fb298-fdb0-5240-aced-78af86bfa532').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:45:44 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:behaviors | SystemNavigation allCallsOn: #flag: fromBehaviors: behaviors sorted: true] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ee1fb298-fdb0-5240-aced-78af86bfa532').
(#iconCode -> 'nil').
(#id -> #'bc34ef97-52af-6c49-b344-cdb766681c0c').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6bb09add-d327-dd4a-bd4b-47d25202dbf7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:45:44 pm').
(#inputKind -> Behavior).
(#outputKind -> MethodReference).
(#priority -> 3840).
(#view -> ViTreeViewExtended)
}))
})