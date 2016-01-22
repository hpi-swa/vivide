definitions
defallSystemChangeNotifications
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:model | SystemChangeNotifier uniqueInstance
	notify: model ofAllSystemChangesUsing: #refresh:]).
(#class -> ViQueryUpdateDefinition).
(#id -> #allSystemChangeNotifications).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 January 2014 11:51:35 am')})).
(#sourceCode -> '[:model | SystemChangeNotifier uniqueInstance
	notify: model ofAllSystemChangesUsing: #refresh:]')})