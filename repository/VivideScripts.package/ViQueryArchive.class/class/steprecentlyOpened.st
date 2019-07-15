steps
steprecentlyOpened
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out |
	out
		addAll: {'Packages'. (VivideLight historyFor: #packages) objects} asTuples;
		addAll: {'Classes'. (VivideLight historyFor: #classes) objects} asTuples;
		addAll: {'Methods'. (VivideLight historyFor: #methods) objects} asTuples;
		addAll: {'Scripts'.(VivideLight historyFor: #scripts) objects} asTuples]).
(#className -> #ViScriptDefinition).
(#id -> #'4f13abce-d727-5143-a569-3a329c380f68').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 9:17:12 am')
})).
(#sourceCode -> '[:in :out |
	out
		addAll: {''Packages''. (VivideLight historyFor: #packages) objects} asTuples;
		addAll: {''Classes''. (VivideLight historyFor: #classes) objects} asTuples;
		addAll: {''Methods''. (VivideLight historyFor: #methods) objects} asTuples;
		addAll: {''Scripts''.(VivideLight historyFor: #scripts) objects} asTuples]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4f13abce-d727-5143-a569-3a329c380f68').
(#iconCode -> 'nil').
(#id -> #recentlyOpened).
(#isProperty -> false).
(#label -> 'Recently Opened').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#groupsMinimal #defaultPropertiesExtended)).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 9:17:12 am').
(#inputKind -> ViProfile).
(#isGlobal -> true).
(#notifier -> {[ViObjectHistoryNotifier new
		history: (VivideLight historyFor: #packages)]. [ViObjectHistoryNotifier new
		history: (VivideLight historyFor: #classes)]. [ViObjectHistoryNotifier new
		history: (VivideLight historyFor: #methods)]. [ViObjectHistoryNotifier new
		history: (VivideLight historyFor: #scripts)]}).
(#view -> ViTreeViewExtended)
}))
})