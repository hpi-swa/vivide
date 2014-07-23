as yet unclassified
editorFinisher
	
	^ editorFinisher ifNil: [editorFinisher := [:contents :node |
			node perform: (self textSelector, #:) asSymbol withArguments: {contents}]].