definitions
def59d9bd2500915e428d9df1f751c74aa5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification source ~= op obsoletion source ifTrue: [UiFugueIcons scriptTextIcon] ifFalse: []).
	#balloonText -> 'Source code changed'}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'59d9bd25-0091-5e42-8d9d-f1f751c74aa5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification source ~= op obsoletion source ifTrue: [UiFugueIcons scriptTextIcon] ifFalse: []).
	#balloonText -> ''Source code changed''}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})