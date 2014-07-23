running
setUp

	super setUp.
	definition
		inputKind: Number;
		outputKind: Number.
		
	updateSetDefinition := ViQueryUpdateDefinition new
		sourceCode: '[:model | MagicSubject notify: model]';
		organization: organization;
		register.
	updateClearDefinition := ViQueryUpdateDefinition new
		sourceCode: '[:model | MagicSubject notifyNoMore: model]';
		organization: organization;
		register.
	
	"Ensure to use test organization for default definitions, too."
	editor currentUpdateSetDefinition organization: organization.
	editor currentUpdateClearDefinition organization: organization.