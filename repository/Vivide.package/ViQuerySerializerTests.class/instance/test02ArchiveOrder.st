tests
test02ArchiveOrder

	| q1 q2 newOrganization |
	q1 := ViQueryStep collect: '[:morph | morph submorphs]'.
	q1
		organization: organizer;
		register;
		id: #b.
	q1 definition
		organization: organizer;
		register;
		id: #z.
	"Default view: q viewDefinition id == #treeView"
	organizer registerDefinition: q1 viewDefinition.
	
	q2 := ViQueryStep collect: '[:ea | ea * ea]'.
	q2
		organization: organizer;
		register;
		id: #a.
	
	self
		assert: ({q1.q2} hasEqualElements: organizer orderedSteps);
		assert: q1 viewDefinition == q2 viewDefinition;
		assert: ({q1 definition.q1 viewDefinition} hasEqualElements: organizer orderedDefinitions).
		
	(ViQuerySerializer
		fromOrganizer: organizer
		intoArchive: self archive) serialize.
	
	newOrganization := ViQueryOrganizer new.
	
	(ViQuerySerializer
		fromArchive: self archive
		intoOrganizer: newOrganization) merge.
	
	self assert: (organizer orderedSteps hasEqualElements: newOrganization orderedSteps).