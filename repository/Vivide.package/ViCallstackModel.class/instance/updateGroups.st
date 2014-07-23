as yet unclassified
updateGroups

	| groupDefs currentGroup |
	stacks := OrderedCollection with: OrderedCollection new.
	groups := OrderedCollection with: #user.
	groupDefs := {
		'User Input Handling (Keyboard)' -> #keyStroke:.
		'User Input Handling (Keyboard)' -> #keyDown:.
		'User Input Handling (Keyboard)' -> #keyUp:.
		'User Input Handling (Mouse)' -> #mouseDown:.
		'User Input Handling (Mouse)' -> #mouseUp:.
		'User Input Handling (Mouse)' -> #mouseMove:.
		'User Input Handling (Mouse)' -> #mouseEnter:.
		'User Input Handling (Mouse)' -> #mouseLeave:.
		'Squeak Main Loop' -> #sendFocusEvent:to:clear:.
		'Squeak Main Loop' -> #processEvents.
		'Processes' -> #newProcess}.
	
	context stack do: [:ctxt |
		(groupDefs detect: [:def | ctxt selector == def value] ifNone: [])
			ifNotNil: [:def |
				groups last = def key ifFalse: [
				"New group"
				groups add: def key.
				stacks add: OrderedCollection new]].
		stacks last add: ctxt].
	self modelReset.