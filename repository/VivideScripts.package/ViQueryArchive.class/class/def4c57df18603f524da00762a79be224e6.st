definitions
def4c57df18603f524da00762a79be224e6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [ViProfile active bookmarks] value in: [:result |
	out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'4c57df18-603f-524d-a007-62a79be224e6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2014 11:59:48 am')})).
(#sourceCode -> '[:in :out | [ViProfile active bookmarks] value in: [:result |
	out addAll: result asList]]')})