echo "program starts"

function guessing {
  echo "how many files are here? type a number:"
  read $answer
  files=$(ls -a | wc -l)

  while [[ $answer -ne $files ]]
  do

    if [[ $answer -gt $files ]]
    then
      echo "no, your guess is to high"
      echo "try again:"
    else
      echo "no, your guess is to low"
      echo "try again:"
    fi
    read answer

  done
echo "you guessed"
echo "well done"

}

guessing
