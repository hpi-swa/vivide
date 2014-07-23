finder
initializeFinder

	finder := UiItemModelFinder new.
	finder traversalMode: #depthFirst.
		
	"Crosscutting connections."	
	self searchEdit deferEditSignalTime: 250.
	self searchEdit autoAccept: true.
	
"	self connect: self ui searchEdit signal: #textEdited: toSelector: #findNext."
	self connect: self searchEdit signal: #returnPressed: toSelector: #findNext.
	self connect: self searchEdit signal: #escapePressed: toSelector: #cancelCurrentSearch.
	self connect: self searchEdit signal: #escapePressed: to: self searchEdit selector: #selectAll.
	
	self connect: self finder signal: #foundIndex: toSelector: #addResult:.
	self connect: self finder signal: #finished toSelector: #finishCurrentSearch.