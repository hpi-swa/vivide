initialization
initializeCallStacks

	self openDebuggers do: [:dbg |
		self debuggers add: (Dictionary newFrom: {
			#id -> dbg interruptedProcess name.
			#label -> dbg labelString.
			#stack -> (String streamContents: [:strm | dbg interruptedContext errorReportOn: strm])})].
		
	self debuggers ifEmpty: [
		self ui stackContainer hideFull.
		self width: self width - self ui stackContainer width.
		^ self].
	
	self ui stackEdit readOnly: false.  
	self ui problemBtn checked: true.
	
	self connect: self ui stackCombo signal: #currentIndexChanged:text: toSelector: #stackIndex:.
	self ui stackCombo addItemListFrom: self debuggers using: [:dict :item |
		item text: ('{1} <font color="#0B61A4">pid {2}</font>' format: {(dict at: #label) escapeHtmlText. dict at: #id}) asTextFromHtml].