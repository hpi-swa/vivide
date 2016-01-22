definitions
defeb01a990c76c494eaba118ba6d51bb19
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection]).
(#class -> ViQueryMapDefinition).
(#id -> #'eb01a990-c76c-494e-aba1-18ba6d51bb19').
(#inputKind -> PackageInfo).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})