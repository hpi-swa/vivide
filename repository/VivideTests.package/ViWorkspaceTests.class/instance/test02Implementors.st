tests - toolset
test02Implementors

	| symbol methodReferences window pane |
	symbol := #open.
	methodReferences := self navigation allImplementorsOf: symbol.
	
	"0) Check validity of test data."
	self assert: methodReferences notEmpty.
	
	"1) Squeak's standard way through the system navigation."
	window := self navigation browseAllImplementorsOf: symbol.
	pane := window pane.
	self
		assert: methodReferences equals: pane objects;
		assert: pane script notNil;
		deny: #implementors asScript equals: pane script. "We cannot know..."
	
	"2) Special way for Vivide widgets."
	window := vivide openImplementors: symbol.
	pane := window pane.
	self
		assert: {symbol} equals: pane objects;
		assert: methodReferences asArray equals: (pane allResults select: #isMethodReference);
		assert: pane script notNil;
		assert: #implementors asScript equals: pane script.