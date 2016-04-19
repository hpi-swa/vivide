*vivide-queries-override
makeConvenient: menu

	| queryMenu commandMenu |
	queryMenu := MenuMorph new defaultTarget: VivideLight active.
	(ViQueryOrganizer active ifNil: [#()] ifNotNil: #globalQueries) do: [:query |
		queryMenu
			add: query nextLabel
			target: VivideLight active
			selector: #openScript:
			argument: query.
		queryMenu lastItem icon: (query nextIcon ifNil: [ViIcons blankIcon])].
			
	commandMenu := MenuMorph new.
	(ViQueryOrganizer active ifNil: [#()] ifNotNil: #globalCommands) do: [:command |
		commandMenu
			add: (command label ifNil: [command definition sourceCode])
			target: command
			selector: #execute.
		commandMenu lastItem icon: (command icon ifNil: [ViIcons blankIcon])].

	(queryMenu hasItems or: [commandMenu hasItems]) ifTrue: [
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