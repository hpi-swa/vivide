initialization
initializeForView: symbol
	"See #viewSpecs."

	currentQueryView := self createItemView: (self viewSpecs at: symbol) new.
	self flag: #ugly. "mt: You cannot assume #selectionBehavior to be understood here!"
	symbol == #table ifTrue: [currentQueryView
		selectionBehavior: #selectRows;
		verticalHeaderVisible: false].
	
	"Additional view for showing search results. Separate instance for performance reasons."
	currentSearchView := self createItemView: (self viewSpecs at: symbol) new.
	symbol == #table ifTrue: [currentSearchView
		selectionBehavior: #selectRows;
		verticalHeaderVisible: false].
	currentSearchView viewport color: (Color gray: 0.95).
	currentSearchView model: self searchModel.
	
	self addAllMorphs: {
		self currentQueryView.
		self searchEdit}