read -p '
██████╗  ██████╗ ███╗   ██╗         ██╗██╗   ██╗     ██╗██╗███████╗          
██╔══██╗██╔═══██╗████╗  ██║         ██║██║   ██║     ██║██║██╔════╝          
██║  ██║██║   ██║██╔██╗ ██║         ██║██║   ██║     ██║██║███████╗          
██║  ██║██║   ██║██║╚██╗██║    ██   ██║██║   ██║██   ██║██║╚════██║          
██████╔╝╚██████╔╝██║ ╚████║    ╚█████╔╝╚██████╔╝╚█████╔╝██║███████║          
╚═════╝  ╚═════╝ ╚═╝  ╚═══╝     ╚════╝  ╚═════╝  ╚════╝ ╚═╝╚══════╝          
                                                                             
██████╗ ██████╗  ██████╗     ██████╗  █████╗ ██████╗ ███████╗███████╗██████╗ 
██╔══██╗██╔══██╗██╔═══██╗    ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗
██████╔╝██████╔╝██║   ██║    ██████╔╝███████║██████╔╝███████╗█████╗  ██████╔╝
██╔═══╝ ██╔══██╗██║   ██║    ██╔═══╝ ██╔══██║██╔══██╗╚════██║██╔══╝  ██╔══██╗
██║     ██║  ██║╚██████╔╝    ██║     ██║  ██║██║  ██║███████║███████╗██║  ██║
╚═╝     ╚═╝  ╚═╝ ╚═════╝     ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
                                                                             
                                                                                 

Welcome To DonJujis Pro Parser, Press Enter To Continue'

clear

PS3='




 ██████╗██╗  ██╗ ██████╗  ██████╗ ███████╗███████╗    ██╗   ██╗██████╗ 
██╔════╝██║  ██║██╔═══██╗██╔═══██╗██╔════╝██╔════╝    ██║   ██║██╔══██╗
██║     ███████║██║   ██║██║   ██║███████╗█████╗      ██║   ██║██████╔╝
██║     ██╔══██║██║   ██║██║   ██║╚════██║██╔══╝      ██║   ██║██╔═══╝ 
╚██████╗██║  ██║╚██████╔╝╚██████╔╝███████║███████╗    ╚██████╔╝██║     
 ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝     ╚═════╝ ╚═╝     
                                                                       


 '
options=("Domain Swap" "Add Numbers And Swap Case" "Email Numbers To No Numbers In Password Transfer" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Domain Swap")

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'

echo 'Removing All Strings Containing Gmail Domains'

grep -riahv -E ".*@gmail.com.*" $file > gmailremoved.txt

echo 'Swapping Domain Of All Remaining Strings Containing Non-Gmail Domains To Gmail'
			
sed -E "s/@.*:/@gmail.com:/" gmailremoved.txt > gmailadded.txt            		

echo 'Strings Successfully Domain Swapped'

echo 'Deduping And Randomizing Strings Please Be Patient This May Take A While!!!'

LC_ALL=C sort -Ru gmailadded.txt > domainswappedtarget.txt

clear

echo 'Strings Successfully Obfuscated!!!'

echo 'Job Done, Cleaning Up Temporary Files'

rm gmailremoved.txt

read -p '

                                          
                                          
@@@@@@@    @@@@@@@@       @@@   @@@       
@@@@@@@@  @@@@@@@@@      @@@@   @@@       
@@!  @@@  !@@           @@!@!   @@!       
!@!  @!@  !@!          !@!!@!   !@!       
@!@  !@!  !@! @!@!@   @!! @!!   @!!       
!@!  !!!  !!! !!@!!  !!!  !@!   !!!       
!!:  !!!  :!!   !!:  :!!:!:!!:  !!:       
:!:  !:!  :!:   !::  !:::!!:::   :!:      
 :::: ::   ::: ::::       :::    :: ::::  
:: :  :    :: :: :        :::   : :: : :  
                                          
DonJuji Loves You, Press Enter To Return To Menu'


            ;;
        "Add Numbers And Swap Case")
            

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'

echo 'Finding All Strings Containing Passwords Without Numeric Appendages' 

grep -riahv -E '[0-9]+$' $file > nonumbers.txt

echo 'Finding All Strings Containing Passwords Without Numeric Appendages' 

grep -riah -E '[0-9]+$' $file > numbers.txt

echo 'Finding All Strings Containing Uppercase Passwords Without Numeric Apendages'

grep -rah -E '(:[A-Z])' nonumbers.txt > unparsedupper.txt

echo 'Swapping Case On All Strings Containing Uppercase Passwords Without Numeric Apendages'

sed -e 's/\(:[A-Z]\)/\L\1/' unparsedupper.txt >> parsedlower.txt

echo 'Finding All Strings Containing Lowercase Passwords Without Numeric Apendages'

grep -rah -E '(:[a-z])' nonumbers.txt > unparsedlower.txt

echo 'Swapping All Strings Containing Lowercase Passwords Without Numeric Apendages'

sed -e 's/\(:[a-z]\)/\U\1/' unparsedlower.txt > parsedupper.txt

echo 'Adding All Strings Containing Passwords Withg Swapped Case Without Numeric Apendages Together'

cat parsedupper.txt >> parsedmix.txt

cat parsedlower.txt >> parsedmix.txt

echo 'Adding 1 To All Strings Containing Passwords With Swapped Case Without Numeric Apendages'

sed -E 's/(.*)/\11/' parsedmix.txt > parsedmix1added.txt

echo 'Adding 123s To All Strings Containing Passwords With Swapped Case Without Numeric Apendages'

sed -E 's/(.*)/\1123/' parsedmix.txt > parsedmix123added.txt

echo 'Adding All Strings Containing Paasswords With Swapped Case And New Numeric Appendeages Together'

cat parsedmix1added.txt > numbersmix.txt

cat parsedmix123added.txt >> numbersmix.txt

echo 'Finding All Strings Containg Uppercase Passwords With Preexisting Numeric Apendages'

grep -rah -E '(:[A-Z])' numbers.txt > unparsedupperall.txt

echo 'Swapping Case On All Strings Containg Uppercase Passwords With Preexisting Numeric Apendages'

sed -e 's/\(:[A-Z]\)/\L\1/' unparsedupperall.txt > parsedlowerall.txt

echo 'Finding All Strings Containg Lowercase Passwords With Preexisting Numeric Apendages'

grep -rah -E '(:[a-z])' numbers.txt > unparsedlowerall.txt

echo 'Swapping Case On All Strings Containg Uppercase Passwords With Preexisting Numeric Apendages'

sed -e 's/\(:[a-z]\)/\U\1/' unparsedlowerall.txt > parsedupperall.txt

echo 'Adding All Strings Containg Passwords With Swapped Case And Preexisting Numeric Apendages Together'

cat parsedupperall.txt > allmix.txt

cat parsedlowerall.txt >> allmix.txt 

echo 'Adding All New Strings Together'

cat numbersmix.txt > finalmix.txt

cat allmix.txt >> finalmix.txt

echo 'Deduping And Randomizing Strings Please Be Patient This May Take A While!!!'

LC_ALL=C sort -Ru finalmix.txt > caseswapped-numericallyappended-result.txt

clear

echo 'Strings Successfully Obfuscated!!!'

echo 'Job Done, Cleaning Up Temporary Files'

rm nonumbers.txt 

rm numbers.txt

rm unparsedupper.txt

rm unparsedlower.txt

rm parsedupper.txt

rm parsedlower.txt

rm parsedmix.txt

rm parsedmix1added.txt

rm parsedmix123added.txt

rm numbersmix.txt

rm unparsedupperall.txt

rm unparsedlowerall.txt

rm parsedupperall.txt

rm parsedlowerall.txt

rm allmix.txt

rm finalmix.txt 

read -p '

                                          
                                          
@@@@@@@    @@@@@@@@       @@@   @@@       
@@@@@@@@  @@@@@@@@@      @@@@   @@@       
@@!  @@@  !@@           @@!@!   @@!       
!@!  @!@  !@!          !@!!@!   !@!       
@!@  !@!  !@! @!@!@   @!! @!!   @!!       
!@!  !!!  !!! !!@!!  !!!  !@!   !!!       
!!:  !!!  :!!   !!:  :!!:!:!!:  !!:       
:!:  !:!  :!:   !::  !:::!!:::   :!:      
 :::: ::   ::: ::::       :::    :: ::::  
:: :  :    :: :: :        :::   : :: : :  
                                          
DonJuji Loves You, Press Enter To Return To Menu'

            ;;
       
        "Email Numbers To No Numbers In Password Transfer")
            

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'


echo 'Prequalifying Lines For Transfer'

grep -riah -E '^([a-z!@#$%&*._-]{1,25})([0-9]{1,16})(@.*:)([a-z!@#$%&*._-]{1,20}$)' $file > prequalifynum2nonum.txt

echo 'Transferring Numbers'

sed -E 's/^([a-z!@#$%&*._-]{1,25})([0-9]{1,16})(@.*:)([a-z!@#$%&*._-]{1,20}$)/\1\2\3\4\2/' prequalifynum2nonum.txt > parsednum2nonum.txt

echo 'Deduping And Randomizing Strings Please Be Patient This May Take A While!!!'

LC_ALL=C sort -Ru prequalifynum2nonum.txt.txt > num2nonumresult.txt

clear

echo 'Strings Successfully Obfuscated!!!'

echo 'Job Done, Cleaning Up Temporary Files'


read -p '

                                          
                                          
@@@@@@@    @@@@@@@@       @@@   @@@       
@@@@@@@@  @@@@@@@@@      @@@@   @@@       
@@!  @@@  !@@           @@!@!   @@!       
!@!  @!@  !@!          !@!!@!   !@!       
@!@  !@!  !@! @!@!@   @!! @!!   @!!       
!@!  !!!  !!! !!@!!  !!!  !@!   !!!       
!!:  !!!  :!!   !!:  :!!:!:!!:  !!:       
:!:  !:!  :!:   !::  !:::!!:::   :!:      
 :::: ::   ::: ::::       :::    :: ::::  
:: :  :    :: :: :        :::   : :: : :  
                                          
DonJuji Loves You, Press Enter To Return To Menu'

            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
