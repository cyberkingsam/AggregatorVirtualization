#!/bin/bash
while true;
do 
if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c 52437df9-cb48-4528-bac5-a6815e12806b" > /dev/null
then
echo "python running"
else
nohup python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c 52437df9-cb48-4528-bac5-a6815e12806b &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c de52dd37-7f54-4204-8728-37d1ffb59be9" > /dev/null
then
echo "python running"
else
nohup python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c de52dd37-7f54-4204-8728-37d1ffb59be9  &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c 46b48925-967d-4eda-aee0-1e4e56fcad30" > /dev/null
then
echo "python running"
else
nohup python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c 46b48925-967d-4eda-aee0-1e4e56fcad30 &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c 0ef1f7e4-752f-43ba-8d44-32eb6ee8c428" > /dev/null
then
echo "python running"
else
nohup python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c 0ef1f7e4-752f-43ba-8d44-32eb6ee8c428  &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c ac31a351-abaa-449a-bab1-f966de690549"
then
echo "python running"
else
nohup python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c ac31a351-abaa-449a-bab1-f966de690549  &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c c217fc19-a9c5-4ca7-9b5b-8272a320fcb2"
then
echo "python running"
else
nohup python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c c217fc19-a9c5-4ca7-9b5b-8272a320fcb2 &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c c217fc19-a9c5-4ca7-9b5b-8272a320fcb2"
then
echo "python running"
else
nohup python /home/project/motion_detector.py -ag 7ce76956-b9bd-4f5d-b23b-6a33ce174dd4 --ip http://192.168.0.15/ -c c217fc19-a9c5-4ca7-9b5b-8272a320fcb2  &>/home/Aggregator/pythonLog &
fi
sleep 10;
done;
