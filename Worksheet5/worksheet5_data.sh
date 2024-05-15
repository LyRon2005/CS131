categories=("Music" "Entertainment" "Gaming" "Comedy")
for category in "${categories[@]}"; do
	awk -F ',' -v category="$category" '$8 == "United States" && $5 == category {print}' 'Global YouTube Statistics.csv' > "Worksheet5_US_${category}.txt"
done

