private
ensureLimit

	self size - self limit timesRepeat: [
		self frequencies removeKey: self objects removeLast].