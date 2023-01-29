for file in $(ls -tr animeTrackerList/*.txt |grep -i -v aria);
do
   (cat $file | sort | uniq | grep -v "^$" | grep -v "#" | grep -i -E ^"http|udp"; echo)  >> temp.txt
done


for file in $(ls -tr TrackersListCollection/*.txt |grep -i -v aria);
do
   (cat $file | sort | uniq | grep -v "^$" | grep -v "#" | grep -i -E ^"http|udp"; echo)  >> temp.txt
done

cat temp.txt | sort | uniq > all.txt