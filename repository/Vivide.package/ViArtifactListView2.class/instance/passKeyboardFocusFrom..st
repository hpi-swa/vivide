actions - focus
passKeyboardFocusFrom: aMethodEditor
	"This is useful when the given editor does not need the focus anymore, e.g., when about to be deleted."
	
	| index target |
	index := self artifactContainers indexOf: aMethodEditor.  
	
	target:= index < self artifactContainers size
		ifTrue: [self artifactContainers at: index + 1]  
		ifFalse: [self artifactContainers at: (index - 1 max: 1)].
	
	"We have to defer it because we are only #aboutToClose."
	WorldState addDeferredUIMessage: [self passKeyboardFocusTo: target].