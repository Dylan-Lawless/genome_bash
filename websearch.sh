########################################
#####   Websearch                   ####
########################################
####    Read a file and run         ####
####    a websearch for each line.  ####
####    Used for searching for      ####
####    software from a long list   ####
####    of names.                   ####
########################################

########################################
####    Still requires              ####
#### 1. Splitting long lists        ####
####    into managable sizes.       ####
#### 2. Call system default browser.####
#### 3. Capture URL for top hit.    ####
########################################

# Ask the user for the file or path to the list of terms to websearh
read -e -p "Enter search list, use tab for completion: " file

# Read the list and print out for the user to see
echo "\nNow searching"
cat "$file"

# The system default web browser will need to be opened if it is not already running.
# I used Safari here, this could be changed to automatically open the default
open -a safari

# Open a browser tab and search for each term line in the list
# Lists greater than 10 terms should be split (i.e. $ split -l 10 list.txt)
filename="$file"
while IFS= read -r line;do
echo $line
open "http://www.google.com/search?q="$line""
done < "$filename"

