do-its
debug: aCompiledMethod receiver: anObject in: evalContext
	"Based on TextEditor >> debug:receiver:in:"

	| guineaPig context |
	guineaPig := [
		aCompiledMethod
			valueWithReceiver: anObject
			 arguments: (evalContext ifNil: [ #() ] ifNotNil: [ { evalContext } ]) ] newProcess.
	context := guineaPig suspendedContext.
	
	"Find method on stack."
	[context method == aCompiledMethod] whileFalse: [
		guineaPig step: context.
		context := guineaPig stepToSendOrReturn].
	
	ToolSet default
		debug: guineaPig
		context: context
		label: 'Debug it'
		contents: nil
		fullView: true.