definitions
def5e31638abe439f4bbbc30248666964f2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteString | {byteString}, #(
	('<<' '\<\<') ('>>' '\>\>') ('>2' '\>2')
	('<code>' '<font color="#005500" family="Bitmap Envy Code R">')
	('</code>' '</font>')
	('=>' '=\>') ('<=' '\<=')
	) reduce: [:s :fromTo | s copyReplaceAll: fromTo first with: fromTo second]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'5e31638a-be43-9f4b-bbc3-0248666964f2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 4:03:58 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteString | {byteString}, #(
	(''<<'' ''\<\<'') (''>>'' ''\>\>'') (''>2'' ''\>2'')
	(''<code>'' ''<font color="#005500" family="Bitmap Envy Code R">'')
	(''</code>'' ''</font>'')
	(''=>'' ''=\>'') (''<='' ''\<='')
	) reduce: [:s :fromTo | s copyReplaceAll: fromTo first with: fromTo second]]]
		value: in) do: [:result | out addAll: result asList]]')})