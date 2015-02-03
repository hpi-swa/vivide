updating
updateContext

	| context class selector pcRange |
	context := self debugger selectedContext.
	class := context method methodClass.
	selector := context method selector.
	"Taken from Debugger>>pcRange"
	pcRange := self debugger pcRange.

	((class includesSelector: selector)
		ifTrue: [
			self ensureMethodEditor
				object: class >> selector;
				artifact]
		ifFalse: [ "Just do-its on expressions."
			self ensureMethodEditor
				object: context method;
				artifact]) ifNotNil: [:textEdit |
			
			textEdit model
				doItContext: context;
				doItReceiver: context receiver.
			textEdit
				select: pcRange;
				scrollToShowSelection].