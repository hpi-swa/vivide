as yet unclassified
buttons

	^ {
	{#classActions. self buttonBarCreator} -> {
		[:class | {#text -> 'Browse'. #clicked -> [:v :s | s ifTrue: [class browse]]}] -> {ClassDescription.Object}.
		[:class | {#text -> 'Hierarchy'. #clicked -> [:v :s | s ifTrue: [class browseHierarchy]]}] -> {ClassDescription.Object}.
		[:class | {#text -> 'Lexicon'. #clicked -> [:v :s | s ifTrue: [Lexicon openFullProtocolForClass: class]]}] -> {ClassDescription.Object}
	}.
	{#methodActions. self buttonBarCreator} -> {
		[:ref | {#text -> 'Implementors'. #clicked -> [:v :s | s ifTrue: [ref systemNavigation browseAllImplementorsOf: ref selector]]}] -> {MethodReference.Object}.
		[:ref | {#text -> 'Senders'. #clicked -> [:v :s | s ifTrue: [ref systemNavigation browseAllCallsOn: ref selector]]}] -> {MethodReference.Object}.
		[:ref | {#color -> Color green. #text -> 'Versions'. #clicked -> [:v :s | s ifTrue: [VersionsBrowser
				browseVersionsOf: ref compiledMethod
				class: ref actualClass
				meta: ref classIsMeta
				category: ref category
				selector: ref selector]]}] -> {MethodReference.Object}.		
	}
	}