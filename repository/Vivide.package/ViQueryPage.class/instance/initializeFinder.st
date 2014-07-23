finder
initializeFinder

	finder := (UiItemModelFinder on: self queryModel).
	finder traversalMode: #depthFirst.
		
	"Crosscutting connections."	
	self ui searchEdit deferEditSignalTime: 250.
	self ui searchEdit autoAccept: true.
"	self connect: self ui searchEdit signal: #textEdited: toSelector: #findNext."
	self connect: self ui searchEdit signal: #returnPressed: toSelector: #findNext.
	self connect: self ui searchEdit signal: #escapePressed: toSelector: #cancelCurrentSearch.
	self connect: self ui searchEdit signal: #escapePressed: to: self ui searchEdit selector: #selectAll.
	
	self connect: self finder signal: #foundIndex: toSelector: #addResult:.
	self connect: self finder signal: #finished toSelector: #finishCurrentSearch.
	
	"Restart search if query results change."
	self connect: self queryModel signal: #modelReset toSelector: #findNext.
	self connect: self signal: #currentQueryChanged: toSelector: #findNext. "should not trigger a modelReset to avoid duplicate updates..."