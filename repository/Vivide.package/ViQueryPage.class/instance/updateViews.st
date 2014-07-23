updating
updateViews
	
	| updatedQueryView updatedSearchView q supportsSearch |
	q := self currentQuery ifNil: [self queryModel firstStep].
	
	updatedQueryView := q updateView: self currentQueryView forEnvironment: self.
	self currentQueryView ~~ updatedQueryView ifTrue: [
		(updatedQueryView isKindOf: UiAbstractItemView) ifTrue: [
			"updatedQueryView viewport drawCacheActive: true. <-- conflicts with lazy icons"
			self
				connect: updatedQueryView viewport eventHandler signal: #focusLost
				to: previewHandler selector: #discardPreview.
			updatedQueryView viewport eventHandler
				on: Character escape send: #discardPreview to: previewHandler].
		
		self
			replaceOldView: self currentQueryView
			withNewView: updatedQueryView.
		
		currentQueryView := updatedQueryView].		

	supportsSearch := (updatedQueryView isKindOf: UiAbstractItemView)
		or: [(updatedQueryView respondsTo: #isSearchSupported) and: [
				updatedQueryView isSearchSupported]].
	self ui searchEdit visible: supportsSearch.
	
	updatedSearchView := q updateView: self currentSearchView forEnvironment: self.		
	self currentSearchView ~~ updatedSearchView ifTrue: [
		(updatedSearchView isKindOf: UiAbstractItemView) ifTrue: [
			updatedSearchView viewport color: (Color gray: 0.95).
			self
				connect: updatedSearchView viewport eventHandler signal: #focusLost
				to: previewHandler selector: #discardPreview.
			updatedSearchView viewport eventHandler
				on: Character escape send: #discardPreview to: previewHandler].
		
		self
			replaceOldView: self currentSearchView
			withNewView: updatedSearchView.
			
		currentSearchView := updatedSearchView].
	
	"Give user feedback."
	(self world notNil and: [self currentQuery notNil]) ifTrue: [
		ViAnimatedImageMorph
			flyOutOn: self currentVisibleView
			with: (self currentQuery nextIcon ifNil: [UiSilkIcons arrowRefreshIcon])].