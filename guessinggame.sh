echo "program starts"

function guessing {
  echo "how many files are here"
  read $answer
  files=$(ls -a | wc -l)

  while [[ $answer -ne $files ]]
  do

    if [[ $answer -gt $files ]]
    then
      echo "no, your guess is to high, try again"
    else
      echo "no, your guess is to low, try again"
    fi
    read answer

  done
echo "you guessed, congrats"

}

guessing
