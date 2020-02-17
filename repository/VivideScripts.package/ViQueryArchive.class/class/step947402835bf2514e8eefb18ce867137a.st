steps
step947402835bf2514e8eefb18ce867137a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | "See TestRunner >> updateClasses, sortClass:before:"
	classes sort: [:a :b |
		| first second |
		first := a withAllSuperclasses reversed.
		second := b withAllSuperclasses reversed.
		[
			1 to: (first size min: second size) do: [ :index | 
				(first at: index) == (second at: index)
					ifFalse: [ Notification signal: index ]].
				second includes: a]
		on: Notification
		do: [:n | 	(first at: n messageText) name <= (second at: n messageText) name].
	]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'53a21095-e2ea-c842-86e3-cf688125dbe6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:33:53 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | "See TestRunner >> updateClasses, sortClass:before:"
	classes sort: [:a :b |
		| first second |
		first := a withAllSuperclasses reversed.
		second := b withAllSuperclasses reversed.
		[
			1 to: (first size min: second size) do: [ :index | 
				(first at: index) == (second at: index)
					ifFalse: [ Notification signal: index ]].
				second includes: a]
		on: Notification
		do: [:n | 	(first at: n messageText) name <= (second at: n messageText) name].
	]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'53a21095-e2ea-c842-86e3-cf688125dbe6').
(#iconCode -> 'nil').
(#id -> #'94740283-5bf2-514e-8eef-b18ce867137a').
(#isProperty -> false).
(#label -> nil).
(#next -> #'49d802a1-3f51-514e-accf-7854f6e8d622').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:33:53 am').
(#inputKind -> Behavior).
(#outputKind -> Behavior).
(#priority -> 5560)
}))
})