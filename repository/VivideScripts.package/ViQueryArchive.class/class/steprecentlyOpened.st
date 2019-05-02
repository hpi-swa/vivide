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
(#next -> #'c4ee7c1c-d764-1148-89be-c82a7c91889c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 9:17:12 am').
(#inputKind -> ViProfile).
(#notifier -> {[:t1 | ViObjectHistoryNotifier new history: t1 recentPackages]. [:t1 | ViObjectHistoryNotifier new history: t1 recentClasses]. [:t1 | ViObjectHistoryNotifier new history: t1 recentMethods]. [:t1 | ViObjectHistoryNotifier new history: t1 recentScripts]})}))})