# M5K

#### more information on the MEDIA5K Challenge here: http://botlab.io/media5k

This is part of the starter kit for MEDIA5K challenge where the goal is to accurately identify spam sites. The remaining part can be found on the link provided above.

First and foremost, the script provided here is intented for research use only and for anything else than limited number of sites for early research purpose, please consider using the respective API.

There are two "versions":

1) m5k.sh is the script that are used for generating the media5000 index
2) signals.sh is the script that can be used for generating 39 different meta-data points about the site


## system requirements

Before you can run the scripts, you need to have these installed in the system you are going to run the scripts from

    sudo apt-get install numsum
    sudo cpan install HTML::Strip
    sudo apt-get install R
    sudo apt-get upgrade 
    
To run the m5k.sh script with compound scores calculated, you will also need to have access to Twitter API.

https://github.com/sferik/t -> when you do so, it's probably better to do: 

    sudo apt-get install build-essential

In addition I've found that sometimes you have to do:

    sudo apt-get update --fix-missing

## additional requirements

For running either of these scripts, you should have: 

 - list of common user-agents that go to m5k.ua file
 - list of few IP from a common VPN solution you have access to 
 - a sell-side event log that becomes the sample file


## combound scores (m5k.sh)
###### this is the version that is used for calculating the latest scores in http://botlab.io/media5k

While the signals.sh version (below) does not expect you to have a large ad event log, m5k.sh does. So if you don't have such a file, move below to the other version. Or alternatively you could remove the traffic based scores from the script. 

Because the intended use is for large files, this script assumes that you've first run indexer.sh to build an index of your event (log) file/s. 


## metrics (signals.sh)
###### in addition to the version we've used for calculation the scores on the index, we're also making available a set of direct signals from Alexa.com, WOT, Similar Web and WHOIS. These are explained below
	
	SW_COUNTRY1		share of traffic for 1st country		percentile
	SW_COUNTRY2		share of traffic for 2nd country		percentile
	SW_COUNTRY3		share of traffic for 3rd country		percentile
	SW_COUNTRY4		share of traffic for 4th country		percentile
	SW_COUNTRY5		share of traffic for 5th country		percentile

	SW_SOCIAL1		share of traffic for 1st social site		percentile		
	SW_SOCIAL2		share of traffic for 2nd social site		percentile
	SW_SOCIAL3		share of traffic for 3rd social site		percentile
	SW_SOCIAL4		share of traffic for 4th social site		percentile
	SW_SOCIAL5		share of traffic for 5th social site		percentile

	SW_DIRECT		share of traffic of direct traffic		percentile
	SW_REFERRAL		share of traffic of referral traffic		percentile
	SW_EMAIL		share of traffic of email traffic		percentile
	SW_DISPLAY		share of traffic of display ad traffic		percentile
	SW_SEARCH		share of traffic of search traffic		percentile
	SW_ORGANICSEARCH	share of traffic of organic search traffic	percentile
	SW_PAIDSEARCH		share of traffic of paid search traffic		percentile
	SW_BOUNCE		share of traffic of bounced traffic		percentile

	ALEXA_TOPCOUNTRIES	share of top5 countries of all traffic		percentile
	ALEXA_BOUNCERATE	share of traffic of bounced traffic		percentile
	ALEXA_SEARCHVISITS	share of traffic of search traffic		percentile
	ALEXA_RANK		global rank					rank
	ALEXA_PAGEVIEWS		average pageviews				decimal
	ALEXA_TIMEONSITE	average time on site				time
	ALEXA_TOPKEYWORDS	share of top5 keywords of traffic		percentile
	ALEXA_INLINKS		number of links leading to the site		integer
	ALEXA_LOADSPEED		time it takes on average to load the page	time
	ALEXA_MALES		affinity with male audiences			category
	ALEXA_FEMALES		affinity with female audiences			category

	WOT_TRUST		user trust on the site				integer
	WOT_CHILDSAFETY		user reviewed childsafety of the site		integer		
	WOT_VOTES		number of votes the site received		integer

	WHOIS_PRIVACY		the domain uses whois privacy			boolean
	WHOIS_YEARS		number of years from creation of domain		integer


