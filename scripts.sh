docker run --rm bluet/proxybroker2 find --types HTTP HTTPS --lvl High --countries US --strict -l 10 2>&1 | gawk '{print $5}' | grep -E '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\:[[:digit:]]{1,4}' | sed 's/.$//' > result.txt; cat result.txt #output proxybroker ip

