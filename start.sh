if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/Eva-last/Eva-last.git /Eva-last
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva-last
fi
cd /Eva-last
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
