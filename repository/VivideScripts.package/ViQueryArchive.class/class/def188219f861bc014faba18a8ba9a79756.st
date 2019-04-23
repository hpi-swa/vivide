definitions
def188219f861bc014faba18a8ba9a79756
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  
	Time now print24, ' -- ',
	
	(obj isForm
		ifTrue: ['Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString]) ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'188219f8-61bc-014f-aba1-8a8ba9a79756').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:17:12 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  
	Time now print24, '' -- '',
	
	(obj isForm
		ifTrue: [''Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}'' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString]) ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})