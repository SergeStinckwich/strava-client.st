as yet unclassified
example
	| client athlete |
	client := StravaClient new accessToken: self myPrivateToken.
	athlete := client getCurrentAthlete.
	athlete firstName