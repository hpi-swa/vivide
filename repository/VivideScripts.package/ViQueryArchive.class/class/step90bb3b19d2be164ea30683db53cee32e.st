steps
step90bb3b19d2be164ea30683db53cee32e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj |  
	{ obj isVariableBinding
		ifTrue: [{
			#text -> obj value asString.
			#icon -> (obj key isMeta
				"inst vars" 
				ifFalse: [UiSilkIcons bulletBlueIcon] ifTrue: [
					obj value first isUppercase
						"real class vars"
						ifTrue: [UiSilkIcons bulletBlackIcon]
						"inst vars of meta class"
						ifFalse: [UiSilkIcons bulletPinkIcon]]
				)
			}]
		ifFalse: [
			(obj isBehavior ifTrue: [#()] ifFalse: [{#color ->
				((ViToolSet isMethodCodeCategorized: obj)
					ifTrue: [Color green alpha: 0.5] 
					ifFalse: [nil])
			}]), {
				#text -> (ViLabelService doObject: obj).
				#icon -> (ViIconService doObject: obj)}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f576b8f9-6587-f948-af53-df89adad624e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 1:56:52 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj |  
	{ obj isVariableBinding
		ifTrue: [{
			#text -> obj value asString.
			#icon -> (obj key isMeta
				"inst vars" 
				ifFalse: [UiSilkIcons bulletBlueIcon] ifTrue: [
					obj value first isUppercase
						"real class vars"
						ifTrue: [UiSilkIcons bulletBlackIcon]
						"inst vars of meta class"
						ifFalse: [UiSilkIcons bulletPinkIcon]]
				)
			}]
		ifFalse: [
			(obj isBehavior ifTrue: [#()] ifFalse: [{#color ->
				((ViToolSet isMethodCodeCategorized: obj)
					ifTrue: [Color green alpha: 0.5] 
					ifFalse: [nil])
			}]), {
				#text -> (ViLabelService doObject: obj).
				#icon -> (ViIconService doObject: obj)}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f576b8f9-6587-f948-af53-df89adad624e').
(#iconCode -> 'nil').
(#id -> #'90bb3b19-d2be-164e-a306-83db53cee32e').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 November 2013 11:04:24 am').
(#priority -> 5490)
}))
})