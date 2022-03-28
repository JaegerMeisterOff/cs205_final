# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======
#!/bin/bash

FILE=$1
LINES=$(cat FILE)
NonLeg=0
hp_avg=0
hp_total=0
hp_count=0
d_avg=0
d_total=0
d_count=0

#total amount of non legendaries 13
for LINE in $LINES;
do
	if [$LINES[12] == "FALSE"] 
	then 
		$NonLeg+=1
	fi
done

#avg hp	
for LINE in $LINES;
do
	hp_total+=$LINES[5]
	hp_count+=1
	
$hp_avg = $hp_total/$hp_count 
done

#avg defence 
for LINE in $LINES;
do
	d_total+=$LINES[7]
	d_count+=1
done

$d_avg = $d_total/$d_count 


#print output
echo "======= SUMMARY OF POKEMON.DAT ======"
echo "   Total Non-Legendary Pokemon: $NonLeg"
echo "   Avg. HP: $hp_avg"
echo "   Avg. Defense: $d_avg"
echo "======= END SUMMARY ======="





# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
