tests
test08DeferredObjects
	"Invisible pages should not update results."
	
	| fakeOwner |
	self deny: sut isVisible.
	
	sut
		currentQuery: self exampleQuery01;
		objectsDeferred: self exampleObjects.  

	self
		assert: sut objects isEmpty;
		assert: sut visibleResults isEmpty.

	fakeOwner := UiStackedWidget new.
	fakeOwner addPage: sut.
	
	self flag: #inconvenient. "mt: Automatic update would be more handy..."
	sut updateWithDeferredObjects.
	
	self
		assert: sut isVisible;
		assert: (sut visibleResults hasEqualElements: sut objects).
	
	"Once visible, no objects should be deferred. Query update immediately."
	sut objectsDeferred: #(a b c).
	self
		assert: (sut objects hasEqualElements: #(a b c));
		assert: (sut visibleResults hasEqualElements: sut objects).