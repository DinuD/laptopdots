playerctl status &> .spotifyscript
if [ $? == 1 ]; then
  echo ""
elif [ "$(playerctl status)" == "Playing" ]; then
  title=`exec playerctl metadata title`
  artist=`exec playerctl metadata artist`
  echo "  $title - $artist"
else
  echo ""
fi
