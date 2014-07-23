as yet unclassified
stack

	^ {
	{#stack. self squeakListViewCreator} -> {
		[:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]] -> {Process.ContextPart}.
	[:context |
	"See Debugger >> newStack:"
	#text -> context printString] -> {ContextPart.Object}
	}
	}