# git clone https://github.com/DeSireFire/animeTrackerList
for file in $(ls -tr ./animeTrackerList/*.txt |grep -i -v aria);
do
   (cat $file | sort | uniq | grep -v "^$" | grep -v "#" | grep -i -E ^"http|udp"; echo)  >> all.txt
done


# git clone https://github.com/XIU2/TrackersListCollection
for file in $(ls -tr ./TrackersListCollection/*.txt |grep -i -v aria);
do
   (cat $file | sort | uniq | grep -v "^$" | grep -v "#" | grep -i -E ^"http|udp"; echo)  >> all.txt
done

cat all.txt | sort | uniq > all.txt