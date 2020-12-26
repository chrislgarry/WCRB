# WCRB
Simple script to record the daily stream of classical music station [WCRB Boston](https://www.classicalwcrb.org/).

## Usage
1. Create a folder to store the recordings: ```mkdir -p ~/Documents/wcrbstream```
2. Create a log file to record the cronjob status: ```touch ~/Documents/wcrbstream/record_stream.log```
3. Run ```crontab -e``` (MacOS) and paste the following cronjob to start daily recording at 00:00:00 <your server's timezone>:
    ```
    00 00 * * * cd ~/Documents/wcrbstream && ./record_stream.sh wcrbstream http://audio.wgbh.org:8004/ >> record_stream.log 2>&1
    ```
