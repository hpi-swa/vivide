actions
acceptChanges

	"Fall-back if there is no input."
	(self model isNil or: [self model objects isEmpty])
		ifTrue: [^ self yieldObject: self lineEdit theText asString].
	
	self model objects first = self lineEdit theText asString
		ifTrue: [^ self].

	self model nodes first in: [:node |
		node at: #object put: self lineEdit theText asString].

"	self lineEdit theText asString in: [:value |
		self model firstStep objects: {value}.
		ViObjectChangeNotifier uniqueInstance objectChanged: value].
"
	self yield: self selectedNodes.