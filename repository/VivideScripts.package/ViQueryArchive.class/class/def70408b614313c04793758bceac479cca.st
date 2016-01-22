definitions
def70408b614313c04793758bceac479cca
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'70408b61-4313-c047-9375-8bceac479cca').
(#inputKind -> Class).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})