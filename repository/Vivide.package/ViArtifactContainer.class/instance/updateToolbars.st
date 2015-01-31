toolbar - updating
updateToolbars

	self object ifNil: [^ self].

	self toolbar leftPanel refreshFromEditor: self.
	self toolbar rightPanel refreshFromEditor: self.