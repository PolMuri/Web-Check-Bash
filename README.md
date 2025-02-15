# Web-Check-Bash
Bash script to check in Spain if your website is affected by Cloudflare's and the league IP ban 

📌 In summary, what does it do?

It tries to access http://yourweb.com without downloading anything.
If the website responds, it writes a SUCCESS message to the log.
If the website does not respond, it writes an ERROR message to the log.
Everything is recorded in /home/user/check_web.log.

## Set with crontab

I am also attaching the standard schedules of the Spanish football league on weekends, so that you can check with the script if your website is accessible during the matches. The check is done every 5 minutes but can be adjusted to what you want
```
# Every 5 minutes on Fridays from 21:00 to 23:00
*/5 21-23 * * 5 /home/user/check_web.sh
# Every 5 minutes Saturdays and Sundays in the time slots of the matches normally
*/5 14-16 * * 6,7 /home/polmurillas/comprovacio_web.sh
5-59/5 16 * * 6,7 /home/polmurillas/comprovacio_web.sh
0-15/5 17 * * 6,7 /home/polmurillas/comprovacio_web.sh
*/5 18 * * 6,7 /home/polmurillas/comprovacio_web.sh
0-30/5 19 * * 6,7 /home/polmurillas/comprovacio_web.sh
*/5 21-23 * * 6,7 /home/polmurillas/comprovacio_web.sh
# Every 5 minutes on Mondays from 21:00 to 23:00
*/5 21-23 * * 1 /home/user/check_web.sh
```
