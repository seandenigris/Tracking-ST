Class {
	#name : #TnTrackingNumberSpecification,
	#superclass : #TestCase,
	#category : #'TrackingNumbers-Specification'
}

{ #category : #accessing }
TnTrackingNumberSpecification >> testFedex [

	| number |
	number := TnTrackingNumber fromString: '129098553591'.
	self assert: number url = 'https://www.fedex.com/apps/fedextrack/?action=track&trackingnumber=129098553591' asUrl
]
