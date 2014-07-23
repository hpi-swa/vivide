initialization
initializeSummaryContainer

	summaryContainer := ViArtifactSummaryMorph new.
	
	summaryContainer summaryBtn
		dragTransferType: #artifact;
		passenger: self.
	summaryContainer moveBtn
		dragTransferType: #artifact;
		passenger: self.  
	
	self connect: summaryContainer summaryBtn signal: #clicked: toSelector: #expand.
	self connect: summaryContainer closeBtn signal: #clicked: toSelector: #tryClose.
	self connect: summaryContainer expandBtn signal: #clicked: toSelector: #expand.
	
	self connect: self signal: #collapsed toSelector: #updateSummaryBtn.