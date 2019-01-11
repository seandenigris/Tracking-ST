accessing
url
	^ 'http://wwwapps.ups.com/WebTracking/track?track=yes' asUrl
		queryAt: 'trackNums' put: number;
		yourself