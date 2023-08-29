if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/priyakapp/Nobitareborn2-. /Nobitareborn2- 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Nobitareborn2-
fi
cd /Nobitareborn2-
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
