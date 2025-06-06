echo "enter a number: 1, 2, 3"
read number
case $number in
1)
	echo "start"
	;;
2)
	echo "resume"
	;;
3)
	echo "end"
	;;
*)
	echo "invalid"
	;;
esac

