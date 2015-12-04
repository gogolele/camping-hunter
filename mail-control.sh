rm -f camping.log
./camping-hunter.sh > camping.log
cat camping.log | nc 172.16.35.30 25
