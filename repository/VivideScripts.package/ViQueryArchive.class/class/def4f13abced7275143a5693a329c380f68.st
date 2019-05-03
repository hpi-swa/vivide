definitions
def4f13abced7275143a5693a329c380f68
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out |
	out
		addAll: {'Packages'. (VivideLight historyFor: #packages) objects} asTuples;
		addAll: {'Classes'. (VivideLight historyFor: #classes) objects} asTuples;
		addAll: {'Methods'. (VivideLight historyFor: #methods) objects} asTuples;
		addAll: {'Scripts'.(VivideLight historyFor: #scripts) objects} asTuples]).
(#class -> ViScriptDefinition).
(#id -> #'4f13abce-d727-5143-a569-3a329c380f68').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 9:17:12 am')})).
(#sourceCode -> '[:in :out |
	out
		addAll: {''Packages''. (VivideLight historyFor: #packages) objects} asTuples;
		addAll: {''Classes''. (VivideLight historyFor: #classes) objects} asTuples;
		addAll: {''Methods''. (VivideLight historyFor: #methods) objects} asTuples;
		addAll: {''Scripts''.(VivideLight historyFor: #scripts) objects} asTuples]')})