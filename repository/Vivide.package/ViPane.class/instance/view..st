accessing - view
view: newView

	self view ifNotNil: [:v |
		self model disconnectSignal: #modelReset from: v selector: #process:.
		self model disconnectSignal: #propertiesChanged from: v selector: #process:.
		self model disconnectSignal: #propertiesChanged: from: v selector: #process:.
		v clear; delete.
		v disconnectSignal: #yield: from: self selector: #notifyChangedSelection:].
	
	newView ifNil: [^ self].
	
	self
		connect: newView signal: #yield:
		toSelector: #notifyChangedSelection:.
		
	newView connect: self model signal: #modelReset toSelector: #process: pattern: #(0).
	newView connect: self model signal: #propertiesChanged toSelector: #process: pattern: #(0).
	newView connect: self model signal: #propertiesChanged: toSelector: #process: pattern: #(0).

	newView
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	self addMorphBack: newView.