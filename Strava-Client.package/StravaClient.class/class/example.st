examples
example
	| client athlete |
	client := StravaClient new accessToken: StravaClient myPrivateToken.
	athlete := client getCurrentAthlete.
	athlete firstName