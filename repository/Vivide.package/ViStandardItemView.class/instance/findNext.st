finder
findNext

	self world ifNil: [^ self].
	self finder reset.
	
	"Prepare search result list for results."
	self searchModel
		removeAllGroups;
		groups: self queryModel groups.

	self searchEdit theText ifEmpty: [
		^ self hideSearchResults].
	
	self searchModel beginDeferAdd.
	self finder
		nextSatisfying: self checkBlock
		forkAt: 35.
		
	self showSearchResults.