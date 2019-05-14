initialization
initializeArtifact

	| container |

	ViScriptChangeNotifier active
		notify: self ofQueryChangesOfItem: ViScriptChangeNotifier stepKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
	ViScriptChangeNotifier active
		notify: self ofQueryChangesOfItem: ViScriptChangeNotifier definitionKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
		
	self initializeTextField.
	self initializeNavigationBar.
	self initializePropertyBar.
	self initializeReferenceBars.
	
	container := Morph new
		color: Color transparent;
		layoutPolicy: ViVerticalLayout new;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
	container addAllMorphs: {
		self referenceBeforeBar.
		self propertyBar.
		self navigationBar.
		self textField.
		self referenceAfterBar.
	}.
	
	self artifact: container.