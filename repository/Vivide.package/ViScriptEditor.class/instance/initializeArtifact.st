initialization
initializeArtifact

	| container |

	ViQueryChangeNotifier uniqueInstance
		notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
	ViQueryChangeNotifier uniqueInstance
		notify: self ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
		
	self initializeTextField.
	self initializeNavigationBar.
	
	container := Morph new
		color: Color transparent;
		layoutPolicy: ViVerticalLayout new;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
	container addAllMorphs: {
		self navigationBar.
		self textField.
	}.
	
	self artifact: container.