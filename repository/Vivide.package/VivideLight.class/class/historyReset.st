history
historyReset

	self flag: #note. "mt: Such an object history might be a good use case for the Rack (https://github.com/hpi-swa/Rack)."

	History := OrderedDictionary new.
	
	History
		at: #packages put: (ViRecentlyUsedHistory new limit: 20; yourself);
		at: #classes put: (ViRecentlyUsedHistory new limit: 20; yourself);
		at: #methods put: (ViRecentlyUsedHistory new limit: 20; yourself).
		
	History
		at: #objects put: (ViStampedHistory new limit: 100; yourself);
		at: #transcript put: (ViTranscriptHistory new limit: 200; yourself).
	
	History
		at: #scripts put: (ViRecentlyUsedHistory new limit: 150);
		at: #snippets put: (ViStampedHistory new limit: 2000; yourself). "Do its."
	
	^ History