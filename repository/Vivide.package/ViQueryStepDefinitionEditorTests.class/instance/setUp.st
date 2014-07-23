running
setUp

	super setUp.
	organization := ViQueryOrganizer new.
	definition := self definitionClass new
		sourceCode: '[:numbers | numbers allButLast]';
		organization: organization.
	editor object: definition.