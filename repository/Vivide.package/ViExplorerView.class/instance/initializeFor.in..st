initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	"---"

	self initializeForContainerClass: ViObjectEditor. 

	self setupBlock: [:model :container |
		model nodes
			ifEmpty: [container object: nil]
			ifNotEmpty: [:nodes | container object: (nodes first at: #object)	]].

	self connect: self container contentTree signal: #selectionChanged: toSelector: #selectObjects:.