*vivide-queries-override
makeConvenient: menu

	| queryMenu |
	queryMenu := MenuMorph new defaultTarget: VivideLight active.
	ViScriptTemplate lookupGlobalScripts do: [:script |
		queryMenu
			add: script nextLabel
			target: VivideLight active
			selector: #openScript:
			argument: script.
		queryMenu lastItem icon: (script nextIcon ifNil: [ViIcons blankIcon]) scaledToDisplay].
			
	queryMenu hasItems ifTrue: [
		menu
			add: 'Vivide Tools' subMenu: (queryMenu hasItems
				ifTrue: [queryMenu] ifFalse: [nil]);
			addLine].

	self
		fillIn: menu
		from: {
			{ 'Browser'. { StandardToolSet. #openClassBrowser }. 'open a browser' }.
			{ 'Workspace'. { Workspace. #open }. 'open a workspace' }.
			{ 'Transcript'. { Transcript. #open }. 'open a transcript' }.
			Smalltalk at: #TestRunner ifPresent:[:aClass|
				{ 'Test Runner'. { aClass. #open }. 'open a test runner' }.
			].
			nil
		}