private
generateReportFiles

	| files images |
	timestamp := TimeStamp now.
	files := OrderedCollection new.
	images := self dataForWorldSubmorphs.
	
	"Screenshots"
	images keysAndValuesDo: [:id :properties | | stream |
		stream := ByteArray new writeStream.
		PNGReadWriter putForm: (properties at: #form) onStream: stream.
		files add: (Dictionary newFrom: {
			#name -> (id, '.png').
			#path -> 'img/'.
			#contents -> stream contents base64Encoded})].
		
	"Remove #form data from structure and export JSON."
	self flag: #sideEffects. "mt: Cannot call #generateReportFiles again!"
	images valuesDo: [:properties | properties removeKey: #form].
	
	files add: (Dictionary newFrom: {
		#name -> 'positions.js'.
		#path -> ''.
		#contents -> (String streamContents: [:strm | strm
			nextPutAll: 'positions = ';
			nextPutAll: images asJsonString;
			nextPutAll: ';']) base64Encoded}).
		
	files add: (Dictionary newFrom: {
		#name -> 'debuggers.js'.
		#path -> ''.
		#contents -> (String streamContents: [:strm | strm
			nextPutAll: 'debuggers = ';
			nextPutAll: self dataForDebuggers asJsonString;
			nextPutAll: ';']) base64Encoded}).
	
	files add: (Dictionary newFrom: {
		#name -> 'queries.js'.
		#path -> ''.
		#contents -> (String streamContents: [:strm | strm
			nextPutAll: 'queries = ';
			nextPutAll: self dataForQueries asJsonString;
			nextPutAll: ';']) base64Encoded}).

	files add: (Dictionary newFrom: {
		#name -> 'versions.js'.
		#path -> ''.
		#contents -> (String streamContents: [:strm | strm
			nextPutAll: 'versions = ';
			nextPutAll: self dataForVersions asJsonString;
			nextPutAll: ';']) base64Encoded}).
	
	files add: (Dictionary newFrom: {
		#name -> 'user.js'.
		#path -> ''.
		#contents -> (String streamContents: [:strm | strm
			nextPutAll: 'user = ';
			nextPutAll: (Dictionary newFrom: {
				#topic -> self topic.
				#mood -> self mood.
				#email -> self emailAddress.
				#message -> self message}) asJsonString;
			nextPutAll: ';']) base64Encoded}).

	files add: (Dictionary newFrom: {
		#name -> 'report.html'.
		#path -> ''.
		#contents -> (String streamContents: [:strm | strm
			nextPutAll: (self htmlTemplate format: {
		ActiveWorld width.
		ActiveWorld height.
		String streamContents: [:s |
			s nextPutAll: 'VIVIDE Feedback . '.
			timestamp date printOn: s format: #(1 2 3 ' ' 2 1 1).
			s nextPutAll: ' '.
			timestamp time print24: true showSeconds: false on: s.]})]) base64Encoded}).
		
	^ files