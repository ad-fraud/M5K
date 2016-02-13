# M5K

#### more information on the MEDIA5K Challenge here: http://botlab.io/media5k

This is part of the starter kit for MEDIA5K challenge where the goal is to accurately identify spam sites. The remaining part can be found on the link provided above.

First and foremost, the script provided here is intented for research use only and for anything larger than a few thousand sites, you should use Alexa and WOT API access instead.

- list of common user-agents that go to m5k.ua file
- list of few IP from a common VPN solution you have access to 
- a sell-side event log that becomes the sample file

Because the intended use is for large files, this script assumes that you've first run indexer.sh to build an index of your event (log) file/s. 

Requires: 

- cpan HTML::Strip 
- Twitter API
- R

# metrics
	
	SW_COUNTRY1
	SW_COUNTRY2
	SW_COUNTRY3
	SW_COUNTRY4
	SW_COUNTRY5

	SW_SOCIAL1
	SW_SOCIAL2
	SW_SOCIAL3
	SW_SOCIAL4
	SW_SOCIAL5

	SW_DIRECT
	SW_REFERRAL
	SW_EMAIL
	SW_DISPLAY
	SW_SEARCH
	SW_ORGANICSEARCH
	SW_PAIDSEARCH
	SW_BOUNCE

	ALEXA_TOPCOUNTRIES
	ALEXA_BOUNCERATE
	ALEXA_SEARCHVISITS
	ALEXA_RANK
	ALEXA_PAGEVIEWS
	ALEXA_TIMEONSITE
	ALEXA_TOPKEYWORDS
	ALEXA_INLINKS
	ALEXA_LOADSPEED
	ALEXA_MALES
	ALEXA_FEMALES

	WOT_TRUST
	WOT_CHILDSAFETY
	WOT_VOTES

	WHOIS_PRIVAC
	WHOIS_YEARS


