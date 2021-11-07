if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/darkhacker12121/Mariabotmy.git /Mariabotmy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mariabotmy
fi
cd /Mariabotmy
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
