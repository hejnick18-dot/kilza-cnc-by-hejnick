# kilza-cnc-by-hejnick

Hey, it's hejnick (the real one). I shut down Kilza after getting raided by police and having my stuff taken. So I'm releasing my own CNC here.

**Note:** This version doesn't include the config for connecting your rawnet/rawdog or SSH funnel, but I still have it if anyone wants it — just DM me on Discord.

## Contact

- Discord: `atv2`
- Telegram: [t.me/@xhejnick](https://t.me/@xhejnick)
- Snapchat: [snapchat.com/hejnick2](https://snapchat.com/hejnick2)

## Setup

### Step 1: Set up the database

Install MySQL, then run:

```bash
mysql -u <username> -p

CREATE DATABASE <dbname>;
USE <dbname>;

Then import db.sql.


Step 2: Set permissions

chmod 777 *
# or
chmod 777 main


Step 3: Run and configure

./main &
Then configure config.json to your needs.


That's everything for now — thanks for the support :3

