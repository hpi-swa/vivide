steps
step8392e394aff92645be373e9da7fa6019
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteString | {byteString}, #(
	('<<' '\<\<') ('>>' '\>\>') ('>2' '\>2')
	('<code>' '<font color="#005500" family="Bitmap Envy Code R">')
	('</code>' '</font>')
	('=>' '=\>') ('<=' '\<=')
	) reduce: [:s :fromTo | s copyReplaceAll: fromTo first with: fromTo second]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5e31638a-be43-9f4b-bbc3-0248666964f2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 4:03:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteString | {byteString}, #(
	(''<<'' ''\<\<'') (''>>'' ''\>\>'') (''>2'' ''\>2'')
	(''<code>'' ''<font color="#005500" family="Bitmap Envy Code R">'')
	(''</code>'' ''</font>'')
	(''=>'' ''=\>'') (''<='' ''\<='')
	) reduce: [:s :fromTo | s copyReplaceAll: fromTo first with: fromTo second]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5e31638a-be43-9f4b-bbc3-0248666964f2').
(#iconCode -> 'nil').
(#id -> #'8392e394-aff9-2645-be37-3e9da7fa6019').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8e0086dc-e5de-f948-b5b5-b355fc568037').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 4:03:58 pm')
}))
})