"
UOB
"
Class {
	#name : #MGUOB,
	#superclass : #MGVendor,
	#category : #MyGold
}

{ #category : #accessing }
MGUOB class >> url [ ^ 'https://www.uob.com.my/online-rates/gold-bullion-prices.page'
]

{ #category : #assertions }
MGUOB >> checkDateTimeNodeSubstrings: aSubstrings [
 self assert: (aSubstrings at: 1) = 'with'.
self  assert: (aSubstrings at: 2) = 'effect'.
self  assert: (aSubstrings at: 3) = 'from'.
]

{ #category : #constants }
MGUOB >> getProductGroups [
	^ {MGUOBGoldBullion}
]
