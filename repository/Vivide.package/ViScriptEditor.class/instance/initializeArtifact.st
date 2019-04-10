initialization
initializeArtifact

	| container |

	ViQueryChangeNotifier active
		notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
	ViQueryChangeNotifier active
		notify: self ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
		
	self initializeTextField.
	self initializeNavigationBar.
	self initializePropertyBar.
	
	container := Morph new
		color: Color transparent;
		layoutPolicy: ViVerticalLayout new;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
	container addAllMorphs: {
		self propertyBar.
		self navigationBar.
		self textField.
	}.
	
	self artifact: container.