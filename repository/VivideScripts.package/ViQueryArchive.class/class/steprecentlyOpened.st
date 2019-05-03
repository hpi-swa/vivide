steps
steprecentlyOpened
	<step>

	^ (Dictionary newFrom: {
(#class -> ViScriptStep).
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
(#view -> ViTreeViewExtended)}))})