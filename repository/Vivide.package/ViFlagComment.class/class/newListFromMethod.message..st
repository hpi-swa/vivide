as yet unclassified
newListFromMethod: aCompiledMethod message: aSymbol

	| methodNode treeSearcher flagNodes |
	flagNodes := OrderedCollection new.
	methodNode := RBParser parseMethod: aCompiledMethod getSource asString onError: [:msg :idx | ^ #()].
	treeSearcher := RBParseTreeSearcher new.
	treeSearcher matches: '``@rcv `@msg: ``@args' do: [:node :answer |
		node selector == aSymbol ifTrue: [answer add: node]. answer].
	treeSearcher
		executeTree: methodNode
		initialAnswer: flagNodes.
	^ flagNodes collect: [:node | | s |
		node arguments
			ifNotEmpty: [:args |
				s := args first value.
				s isSymbol ifFalse: [s := node isVariable ifTrue: [] ifFalse: [s asString asSymbol]]]
			ifEmpty: [s := aSymbol].
		self new
			reference: (MethodReference class: aCompiledMethod methodClass selector: aCompiledMethod selector);
			symbol: s ;
			interval: node sourceInterval;
			comment: (node comments
				ifEmpty: []
				ifNotEmpty: [(node source copyFrom: node comments first first + 1 to: node comments first last - 1)])].