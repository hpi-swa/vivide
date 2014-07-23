searching
startSearchIn: someObjects match: aBlock
	
	self assert: iterator == nil.
	
	iterator := UiIterator new.
	iterator root: someObjects.
	self connect: iterator signal: #found: toSelector: #addResult:.
	self connect: iterator signal: #finished toSelector: #stopSearch.
	self connect: iterator signal: #finished to: resultList selector: #helpText: pattern: #(='No objects found. Try another query.').
	self connect: iterator signal: #cancelled to: resultList selector: #helpText: pattern: #(='Search cancelled.').

	"Start process to do searching and defer additions to not block UI process too much."
	resultList model beginDeferAdd.
	iterator nextSatisfying: aBlock forkAt: 35.