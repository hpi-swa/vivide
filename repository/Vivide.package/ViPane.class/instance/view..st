accessing - view
view: view

	self view ifNotNil: [:v |
		self model disconnectSignal: #modelReset from: v selector: #process:.
		self model disconnectSignal: #propertiesChanged from: v selector: #process:.
		self model disconnectSignal: #propertiesChanged: from: v selector: #process:.
		v clear; delete].
	
	view ifNil: [^ self].
	
	self
		connect: view signal: #yield:
		toSelector: #notifyChangedSelection:.
		
	view connect: self model signal: #modelReset toSelector: #process: pattern: #(0).
	view connect: self model signal: #propertiesChanged toSelector: #process: pattern: #(0).
	view connect: self model signal: #propertiesChanged: toSelector: #process: pattern: #(0).

	view
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	self addMorphBack: view.