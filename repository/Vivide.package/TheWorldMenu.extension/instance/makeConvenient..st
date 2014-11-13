*vivide-queries-override
makeConvenient: menu

	| queryMenu commandMenu |
	queryMenu := MenuMorph new defaultTarget: VivideLight active.
	ViQueryOrganizer active globalQueries do: [:query |
		queryMenu
			add: query nextLabel
			target: VivideLight active
			selector: #openQueryAtHand:
			argument: query.
		queryMenu lastItem icon: (query nextIcon ifNil: [ViIcons blankIcon])].
			
	commandMenu := MenuMorph new.
	ViQueryOrganizer active globalCommands do: [:command |
		commandMenu
			add: (command label ifNil: [command definition sourceCode])
			target: command
			selector: #execute.
		commandMenu lastItem icon: (command icon ifNil: [ViIcons blankIcon])].

	menu
		add: 'Global Queries' subMenu: queryMenu;
		add: 'Global Commands' subMenu: (commandMenu hasItems
			ifTrue: [commandMenu] ifFalse: [nil]);
		addLine.

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