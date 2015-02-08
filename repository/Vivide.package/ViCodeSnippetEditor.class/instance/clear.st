memento - cleanup
clear

	super clear.
	
	(self object isKindOf: CodeHolder) ifTrue: [
		snippetEdit widget styler classOrMetaClass: (self object instVarNamed: #currentCompiledMethod) methodClass].

	snippetEdit theText: self object contents copy.

	(self object respondsTo: #bindings) ifTrue: [
		snippetEdit model bindings: self object bindings copy].

"	snippetEdit revertChanges."