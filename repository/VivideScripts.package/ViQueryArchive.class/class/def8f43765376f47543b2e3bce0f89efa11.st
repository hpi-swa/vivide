definitions
def8f43765376f47543b2e3bce0f89efa11
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:changeRecords | changeRecords select: [:changeRecord |
		changeRecord type = #method and: [changeRecord methodClass theNonMetaClass inheritsFrom: ViScriptArchive]]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'8f437653-76f4-7543-b2e3-bce0f89efa11').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:08:34 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:changeRecords | changeRecords select: [:changeRecord |
		changeRecord type = #method and: [changeRecord methodClass theNonMetaClass inheritsFrom: ViScriptArchive]]] value: in)]')})