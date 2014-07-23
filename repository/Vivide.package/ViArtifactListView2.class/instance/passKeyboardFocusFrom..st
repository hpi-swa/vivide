actions - focus
passKeyboardFocusFrom: aMethodEditor
	"This is useful when the given editor does not need the focus anymore, e.g., when about to be deleted."
	
	| index |
	index := self artifactContainers indexOf: aMethodEditor.  
	
	index < self artifactContainers size
		ifTrue: [self passKeyboardFocusTo: (self artifactContainers at: index + 1)]  
		ifFalse: [self passKeyboardFocusTo: (self artifactContainers at: (index - 1 max: 1))].