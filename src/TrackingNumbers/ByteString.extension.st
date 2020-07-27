Extension { #name : #ByteString }

{ #category : #'*TrackingNumbers' }
ByteString >> asTnTrackingNumber [
	^ TnTrackingNumber fromString: self
]
