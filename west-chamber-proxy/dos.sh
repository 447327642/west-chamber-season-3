case "$1" in
    start)
        for (( i=0;i<300;i++)); do
        python dos.py &
        done 
        ;;

    stop)
        ps axu|grep dos|grep -v "grep"|awk '{print $2}'|xargs -L1 kill
        ;;

    restart)
       	$0 stop
        $0 start
        ;;

   *)
        echo "Usage: $0 {start|stop|restart}"
        ;;

esac
