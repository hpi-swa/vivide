definitions
def7bc5c57f4a31694e94213d7f8248addf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:packages | packages gather: [:pkg |
	pkg extensionMethods]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'7bc5c57f-4a31-694e-9421-3d7f8248addf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:packages | packages gather: [:pkg |
	pkg extensionMethods]] value: in)]')})