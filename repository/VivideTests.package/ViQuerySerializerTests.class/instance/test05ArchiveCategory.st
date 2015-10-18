tests
test05ArchiveCategory

	| q |
	q := [:ea | ea * ea] asScript.
	q 
		adoptOrganization: organizer;
		id: #test05ArchiveCategory.
		
	q category: #DummyProject.
	q definition category: #DummyProject.
	
	self serialize.

	self assert: (self archive class organization categories includes: #'*DummyProject-steps').
	self assert: (self archive class organization categories includes: #'*DummyProject-definitions').
	
	"Stoopid side-effects spoil the image. Clean it up again. *sigh*"
	PackageOrganizer default unregisterPackageNamed: #DummyProject.
	(MCPackage named: #DummyProject) workingCopy unregister.