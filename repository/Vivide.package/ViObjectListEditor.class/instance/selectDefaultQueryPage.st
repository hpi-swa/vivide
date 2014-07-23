actions
selectDefaultQueryPage
	"This is the second page. Create one if absent."
	
	self pages size = 1
		ifTrue: [self addOutputPageSilently].
	self currentPageIndex: 2.