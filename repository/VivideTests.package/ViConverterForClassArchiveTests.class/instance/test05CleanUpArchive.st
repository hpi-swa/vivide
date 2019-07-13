tests
test05CleanUpArchive
	
	converter export.

	converter theClass theMetaClass
		compile: 'a' classified: 'unused';
		compile: 'b' classified: 'unused';
		compile: 'c' classified: 'unused'.
	
	self
		assert: (converter theClass theMetaClass organization categories includes: 'unused');
		assert: (converter theClass respondsTo: #a);
		assert: (converter theClass respondsTo: #b);
		assert: (converter theClass respondsTo: #c).		
	
	converter cleanUp.

	self
		deny: (converter theClass theMetaClass organization categories includes: 'unused');
		deny: (converter theClass respondsTo: #a);
		deny: (converter theClass respondsTo: #b);
		deny: (converter theClass respondsTo: #c).		