# Changing TTL (Time to Live)

The Time to Live (TTL) value of your domain is set in seconds, this is the amount of time other DNS servers are told they are allowed to cache your records for before rechecking with an authoritative server (though they don't all honour this). The default time is 86400 seconds, which is 24 hours. This isn't an issue most of the time, but if you ever want to change the IP on one of your records, a 24 hour delay may be unnacceptable.

With SafeDNS your TTL values can be changed, but the functionality to do this may not be enabled for your account by default. If you contact your account manager, they should be able to guide you through getting this enabled.

Once custom TTL values have been enabled, you can modify the TTL value for records in the following location:

Select `Product and Services` > `SafeDNS` > select your domain name > Under the `SOA` heading is the `TTL` value.

Please remember this value is in seconds and that the lowest value is `300` seconds.
