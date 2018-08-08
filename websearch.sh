read -e -p "Enter search list, use tab for completion: " file
echo "\nNow searching"
cat "$file"

filename="$file"
while IFS= read -r line;do
echo $line
open "http://www.google.com/search?q="$line""
done < "$filename"

