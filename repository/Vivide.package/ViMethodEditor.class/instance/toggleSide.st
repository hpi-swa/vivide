actions
toggleSide
	"Moves method between class side and instance side."
	
	| sourceClass targetClass |
	sourceClass := self theClass.
	targetClass := self theClass isMeta
		ifTrue: [self theClass theNonMetaClass]
		ifFalse: [self theClass theMetaClass].
	targetClass
		compile: self method getSource asString
		classified: (self theClass organization categoryOfElement: self selector).

	self object: targetClass >> self selector.
	sourceClass removeSelector: self selector.
	
	self inform: ('Method moved: <b>', self theClass asString, ' \>\> ', self selector asString, '</b>') asHtmlText.