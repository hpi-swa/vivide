system changes
onMethodChange: methodKindEvent

	"Workaround. GC did not manage to remove this object from event listening..."
	self world ifNil: [^ self].
	
	self inputPage onMethodChange: methodKindEvent.  