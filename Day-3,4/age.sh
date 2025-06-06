echo "Enter name"
read name
echo "enter age"
read age
if [ $age -ge 18 ]; then
	echo "adult"
else
	echo "minor"
fi