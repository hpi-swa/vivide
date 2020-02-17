steps
steprecoverUnsavedScripts
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out add: {#objects -> in}, [{
	#bounds -> (0@0 corner: 635@347).
	#current -> #unsavedScripts.
	#scripts -> #(#unsavedScripts ).
	#id -> #'40a98164-6ab3-db44-8db2-caa27b0c9f0c'.
	#out -> #(#(#interactive #'4cc8c555-00fc-e049-b56d-1ca0013dea25' ) #(#interactive #outer ) ).
	#in -> #(#(#automatic #outer ) ).
}] value]).
(#className -> #ViScriptDefinition).
(#id -> #'110ae7b7-c003-5f4f-8bce-b8ec5d33741f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm')
})).
(#sourceCode -> '[:in :out | out add: {#objects -> in}, [{
	#bounds -> (0@0 corner: 635@347).
	#current -> #unsavedScripts.
	#scripts -> #(#unsavedScripts ).
	#id -> #''40a98164-6ab3-db44-8db2-caa27b0c9f0c''.
	#out -> #(#(#interactive #''4cc8c555-00fc-e049-b56d-1ca0013dea25'' ) #(#interactive #outer ) ).
	#in -> #(#(#automatic #outer ) ).
}] value]')
})).
(#className -> #ViScriptStep).
(#definition -> #'110ae7b7-c003-5f4f-8bce-b8ec5d33741f').
(#iconCode -> 'nil').
(#id -> #recoverUnsavedScripts).
(#isProperty -> true).
(#label -> 'Recover Unsaved Scripts').
(#next -> #'1b7534bd-882c-2d45-8ff7-04510695ae1c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm').
(#isGlobal -> true).
(#optimalExtent -> (635@373)).
(#view -> ViMultiPaneTiled)
}))
})