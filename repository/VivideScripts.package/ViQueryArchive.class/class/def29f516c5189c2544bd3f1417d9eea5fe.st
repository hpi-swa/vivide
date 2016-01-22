definitions
def29f516c5189c2544bd3f1417d9eea5fe
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:binding | 
	"See Browser >> messageList"
	(binding key = ClassOrganizer allCategory
		ifTrue: [binding value organization allMethodSelectors]
		ifFalse: [binding value organization listAtCategoryNamed: binding key])
		collect: [:selector | binding value >> selector]]).
(#class -> ViQueryMapDefinition).
(#id -> #'29f516c5-189c-2544-bd3f-1417d9eea5fe').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:31:24 pm')})).
(#sourceCode -> '[:binding | 
	"See Browser >> messageList"
	(binding key = ClassOrganizer allCategory
		ifTrue: [binding value organization allMethodSelectors]
		ifFalse: [binding value organization listAtCategoryNamed: binding key])
		collect: [:selector | binding value >> selector]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})