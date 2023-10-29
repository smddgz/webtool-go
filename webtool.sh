#!/bin/bash
stop(){
pid=$(lsof -i:80|awk '{print $2}'|sed -n '2p')
if [[ -z "${pid}" ]]
then
    echo application is not running
else
    echo kill "${pid}"
    kill -9 "${pid}"
fi
}

start(){
nohup go run main.go >> out.log 2>&1 &
echo application is running
}

cd /opt/webtool-go || exit
git pull

stop
start

#if [ "$1" == "stop" ]
#then
#    stop
#elif [ "$1" == "start" ]
#then
#    start
#elif [ "$1" == "restart" ]
#then
#    stop
#    start
#else
#    echo "incorrect args |start|stop|restart|"
#fi

