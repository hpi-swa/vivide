definitions
def29c2800ba8b5fb468d7fe2ac6a7d3628
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:organizers | 
	| orga |
	orga := ViScriptOrganizer new.
	orga notifier: ViQueryChangeNotifier new.
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: orga) merge.
	organizers, {orga}] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'29c2800b-a8b5-fb46-8d7f-e2ac6a7d3628').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 10:03:33 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:organizers | 
	| orga |
	orga := ViScriptOrganizer new.
	orga notifier: ViQueryChangeNotifier new.
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: orga) merge.
	organizers, {orga}] value: in)]')})