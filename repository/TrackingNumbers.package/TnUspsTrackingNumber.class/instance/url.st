accessing
url
	^ 'https://tools.usps.com/go/TrackConfirmAction_input' asUrl
		queryAt: 'qtc_tLabels1' put: number;
		yourself