#!/bin/bash
campingsitename=$1
campingsiteid=$2
datestr=$3
curl -v --silent -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36" -H "Cookie: __gads=ID=fc8ebd44da692630:T=1441151421:S=ALNI_MYrxbgiHCgJZfqWAGrU0wGybjgv3A; _ga=GA1.2.1844483365.1441151397; s_sess=%20s_cc%3Dtrue%3B%20SC_LINKS%3D%3B%20s_sq%3D%3B; utag_main=_st:1445282355652$ses_id:1445281337400%3Bexp-session; JSESSIONID=8FDB9BA197D848212B88687277AB69B6.awolvprodweb04; NSC_MWQSPE-VXQ-IUUQ=ffffffff09d44f0945525d5f4f58455e445a4a4225b9" -H "Referer:http://www.reserveamerica.com/camping/$campingsitename/r/campgroundDetails.do?contractCode=CA&parkId=$campingsiteid" -d "contractCode=CA&parkId=$campingsiteid&siteTypeFilter=ALL&availStatus=&submitSiteForm=true&search=site&campingDate=$datestr&lengthOfStay=1&campingDateFlex=&currentMaximumWindow=12&contractDefaultMaxWindow=MS%3A24%2CLT%3A18%2CGA%3A24%2CSC%3A13&stateDefaultMaxWindow=MS%3A24%2CGA%3A24%2CSC%3A13&defaultMaximumWindow=12&loop=&siteCode=&lookingFor=&camping_2001_3013=&camping_2001_218=&camping_2002_3013=&camping_2002_218=&camping_2003_3012=&camping_3100_3012=&camping_10001_3012=&camping_10001_218=&camping_3101_3012=&camping_3101_218=&camping_9002_3012=&camping_9002_3013=&camping_9002_218=&camping_9001_3012=&camping_9001_218=&camping_3001_3013=&camping_2004_3013=&camping_2004_3012=&camping_3102_3012=" http://www.reserveamerica.com/camping/$campingsitename/r/campgroundDetails.do?contractCode=CA&parkId=$campingsiteid
