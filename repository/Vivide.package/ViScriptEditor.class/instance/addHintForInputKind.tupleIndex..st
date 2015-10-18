hints - input kind
addHintForInputKind: kind tupleIndex: index

	| buttons |
	kind ifNil: [^ self "Ignore"].
	self class showHints ifFalse: [^ self].
	
	buttons := kind withAllSuperclasses collect: [:class |
		| btn |
		btn := UiToolButton new
			text: class name;
			autoRaise: true;
			yourself.
		self connect: btn signal: #clicked: toSelector: #setInputKind:tupleIndex: pattern: {#=.class.#=.index}.
		self connect: btn signal: #clicked: toSelector: #removeHint: pattern: #(0).
		btn].

	self
		addHint: ('Input kind {1}?' format: {index > 0 ifFalse: [''] ifTrue: ['#', index asString]})
		buttons: buttons
		closeable: true.