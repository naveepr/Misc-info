# Bash tips

## Variables

### Common macros
>- $0 - The name of the Bash script.
>- $1-$9 - The first 9 arguments to the Bash script. (As mentioned above.) 
>- $# - How many arguments were passed to the Bash script.
>- $@ - All the arguments supplied to the Bash script.
>- $? - The exit status of the most recently run process.
>- $$ - The process ID of the current script.
>- $USER - The username of the user running the script.
>- $HOSTNAME - The hostname of the machine the script is running on.
>- $SECONDS - The number of seconds since the script was started.
>- $RANDOM - Returns a different random number each time is it referred to.
>- $LINENO - Returns the current line number in the Bash script.

### Quotes 
> Use a single quote or double quote when combining multiple commands. If single quote is used it is treated as characters
literally whereas in the case of double quoute it can be used for substituting with other variables.
> - newvar="More $myvar" vs newvar='More $myvar'
> - echo $newvar --> More value vs More $myvar

### Command Substitution 
> - variable=$( command ) - Save the output of a command into a variable
> - myvar=$( ls /etc | wc -l )
> - echo There are $myvar entries in the directory /etc

### Exporting variables
> export var1 - Make the variable var1 available to child processes.


## Inputs
>
- read var1 - get the user to input value
- read -p - prompt
- read -s - silent used in passwords
- read var1 var2 var3
-  /dev/stdin - A file you can read to get the STDIN for the Bash script

## Arithmetic

### Let <arithmetic expresssion>
> - let a= (4+5)
> - let "a=5+4"

### Expr - is similar to let except instead of saving the result to a variable it instead prints the answer. 
> - expr 5 + 4 
> - expr 5 \* 4
> - expr 5+4

### Double parenthesis
> - $(( expression ))
> - a=$(( 4 + 5 ))
> - (( b++ ))

### Length of variable 
> - ${#variable}
> - a='Hello World'
> - echo ${#a} # 11

## Conditional statements

### if statement
```bash
if [ <some test> ]
then
    <commands>
fi
```

### Operators in if is test command
> - ! EXPRESSION	The EXPRESSION is false.
> - ! EXPRESSION	The EXPRESSION is false.
> - z STRING	The lengh of STRING is zero (ie it is empty).
> - STRING1 = STRING2	STRING1 is equal to STRING2
> - STRING1 != STRING2	STRING1 is not equal to STRING2
> - INTEGER1 -eq INTEGER2	INTEGER1 is numerically equal to INTEGER2
> - INTEGER1 -gt INTEGER2	INTEGER1 is numerically greater than INTEGER2
> - INTEGER1 -lt INTEGER2	INTEGER1 is numerically less than INTEGER2
> - -d FILE	FILE exists and is a directory.
> - -e FILE	FILE exists.
> - -r FILE	FILE exists and the read permission is granted.
> - -s FILE	FILE exists and it's size is greater than zero (ie. it is not empty).
> - -w FILE	FILE exists and the write permission is granted.
> - -x FILE	FILE exists and the execute permission is granted.

### if elif else
```bash
if [$var -gt 0]
then
    do something 
elif [$var -lt 0]
then 
    do something else
else 
    do something else else
fi
```
### And && OR || 
```bash
if [ $USER == 'bob' ] || [ $USER == 'andy' ]
then
    ls -alh
else
    ls
fi
```

### Case Statements
```bash
case $1 in
  start)
    echo starting
  ;;
  stop)
    echo stoping
  ;;
  restart)
    echo restarting
  ;;
  *)
    echo don\'t know
  ;;
esac
```

## Loops

### While loop
```bash
counter=1
while [ $counter -le 10 ]
do
  echo $counter
  ((counter++))
done
```

### Until 
```bash
counter=1
until [ $counter -gt 10 ]
do
  echo $counter
  ((counter++))
done
```

### for loop

```bash
names='Stan Kyle Cartman'
for name in $names
do
  echo $name
done
```
 - break
 - continue

### Ranges
```bash
for value in {1..5}
do
  echo $value
done

for value in {10..0..2}
do
  echo $value
done
```
### Select
It prints the menu and then selects the user input to the variable.

```bash
names='Kyle Cartman Stan Quit'
PS3='Select character: '
select name in $names
do
  if [ $name == 'Quit' ]
  then
    break
  fi
  echo Hello $name
done
```

## Functions
```bash
print_something () {
  echo Hello I am a function
}
```

### passing arguments
Similar to passing arguments in a scripts

### return value
There is no concept of return value in bash, you can use $? to get the last executes return.
Return 0 indicates SUCCESS.

### local variables
local var_name=<var_value>

### Overriding commands
```bash
ls () {
  command ls -lh
}
```

### Pipe and redirection 
1. 2> means stderr to file
2. &> both stderr and stdout 
3. 2>&1 stderr to stdout
4. command |& command2 stdout and stderr of command to stdout
5. heredoc << 
6. exec N> myfile, exec N< myfile, exec N<> myfile, exec N<&- myfile, exec N>&- myfile
7. lsof -p $$
8. cat 0<&19
9. if test -f file or if [[ -f file ]]

### Pattern 
- [nN][oO] 
- (()) or let  numeric comparison

### Sed
- sed 's/old/new/' myfile --> only first occurence
- sed 's/old/new/G' newfile ---> all occurence
- -e can be used for multiple expression
- -n only echo what you want
- sed '1,5p'
- -f to provide the sed script that needs to run

### awk 
- FS is the field separator usually space
- $0 is the entire line
- awk pattern {action} 

### positional arguments bash {}
- $0 is the path to the program
- ${var <OPR> value}
- ${var := val}
- ${var:offset} for string 
- ${#var} length of var
- ${!x} indirection 

### bash debug
- bash -n for syntax error
- bash -x for echo out commands, set -x , set +x
- set -u check for unset variable

### Eval 
evaluate a string and then run it as a command

### getopt 
process options in the command


