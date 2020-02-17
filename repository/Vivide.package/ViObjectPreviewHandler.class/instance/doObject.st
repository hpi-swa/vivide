preview - private
doObject

	self object ifNotNil: [
		self doObject: self object].
	
	"Attach event handler if necessary to allow handling mouse enter and leave events."
	(panel notNil and: [panel eventHandler isNil]) ifTrue: [panel eventHandler: UiEventHandler new].