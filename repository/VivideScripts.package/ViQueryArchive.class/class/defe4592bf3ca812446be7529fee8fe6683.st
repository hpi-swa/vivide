definitions
defe4592bf3ca812446be7529fee8fe6683
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:def | {#text -> ''. #morph -> (
	Morph new
		color: (Color green paler muchDarker alpha: 0.5);
		height: 12;
		width: ((def first / def second) * 100) truncated)
"		width: (((def first log: 10) / (def second log: 10) ceiling) * 200) truncated)"}]).
(#class -> ViQueryMapDefinition).
(#id -> #'e4592bf3-ca81-2446-be75-29fee8fe6683').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:def | {#text -> ''''. #morph -> (
	Morph new
		color: (Color green paler muchDarker alpha: 0.5);
		height: 12;
		width: ((def first / def second) * 100) truncated)
"		width: (((def first log: 10) / (def second log: 10) ceiling) * 200) truncated)"}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})