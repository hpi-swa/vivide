source code
setFullSourceCode
	"Initialize the text representation for thisStep."
	
	self fullSourceCode: ('{1}\-> {2}' withCRs format: {self thisStep sourceCode. self propertiesToString}).