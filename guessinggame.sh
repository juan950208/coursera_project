echo "program starts"

function testing {
  echo "how many files are here?"
  read input
  test='^[0-9]+$'
  while [[ ! $input =~ $test ]]
  do
    echo "you must input just an integer"
    read input
  done
  guessing $input
}


function guessing {
  files=$(ls -a | wc -l)
  if [[ $1 -gt $files ]]
  then
    echo "no, your guess is to high, try again"
    testing
  elif [[ $1 -lt $files ]]
  then
    echo "no, your guess is to low, try again"
    testing
  else
    echo "you guessed, well done"
  fi
}

testing
