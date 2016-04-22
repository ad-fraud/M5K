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

This version is made for someone with access to a large event log file.

If you don't have access to such a log, but want to calculate these scores, simply comment out the bits that refer to the log file. 

Because the intended use is for large files, this script assumes that you've first run indexer.sh to build an index of your event (log) file/s. If you don't do that, and are running out of a large file >100M rows on a regular machine, it will take very long to compute. 

If you don't care about the log-file part, maybe you want to look at DNsignals scipts instead and compute your own scores based on the direct signals.

https://github.com/mikkokotila/DNSignal/blob/master/README.md

NOTE: DNsignals have less requirements, fetches more direct signals but DOES NOT perform any of the calculations m5k.sh does.
