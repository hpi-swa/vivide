tests
test06ArchiveCategoryWithSpaces

	| q |
	q := [:ea | ea * ea] asScript.
	q 
		adoptOrganization: organizer;
		id: #test05ArchiveCategory.
		
	q category: #'Dummy Project'.
	q definition category: #'Dummy Project'.
	
	self serialize.

	self assert: (self archive class organization categories includes: #'*Dummy Project-steps').
	self assert: (self archive class organization categories includes: #'*Dummy Project-definitions').

	"Stoopid side-effects spoil the image. Clean it up again. *sigh*"
	PackageOrganizer default unregisterPackageNamed: #'Dummy Project'.
	(MCPackage named: #'Dummy Project') workingCopy unregister.