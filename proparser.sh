read -p '
¦¦¦¦¦¦+  ¦¦¦¦¦¦+ ¦¦¦+   ¦¦+         ¦¦+¦¦+   ¦¦+     ¦¦+¦¦+¦¦¦¦¦¦¦+          
¦¦+--¦¦+¦¦+---¦¦+¦¦¦¦+  ¦¦¦         ¦¦¦¦¦¦   ¦¦¦     ¦¦¦¦¦¦¦¦+----+          
¦¦¦  ¦¦¦¦¦¦   ¦¦¦¦¦+¦¦+ ¦¦¦         ¦¦¦¦¦¦   ¦¦¦     ¦¦¦¦¦¦¦¦¦¦¦¦¦+          
¦¦¦  ¦¦¦¦¦¦   ¦¦¦¦¦¦+¦¦+¦¦¦    ¦¦   ¦¦¦¦¦¦   ¦¦¦¦¦   ¦¦¦¦¦¦+----¦¦¦          
¦¦¦¦¦¦+++¦¦¦¦¦¦++¦¦¦ +¦¦¦¦¦    +¦¦¦¦¦+++¦¦¦¦¦¦+++¦¦¦¦¦++¦¦¦¦¦¦¦¦¦¦¦          
+-----+  +-----+ +-+  +---+     +----+  +-----+  +----+ +-++------+          
                                                                             
¦¦¦¦¦¦+ ¦¦¦¦¦¦+  ¦¦¦¦¦¦+     ¦¦¦¦¦¦+  ¦¦¦¦¦+ ¦¦¦¦¦¦+ ¦¦¦¦¦¦¦+¦¦¦¦¦¦¦+¦¦¦¦¦¦+ 
¦¦+--¦¦+¦¦+--¦¦+¦¦+---¦¦+    ¦¦+--¦¦+¦¦+--¦¦+¦¦+--¦¦+¦¦+----+¦¦+----+¦¦+--¦¦+
¦¦¦¦¦¦++¦¦¦¦¦¦++¦¦¦   ¦¦¦    ¦¦¦¦¦¦++¦¦¦¦¦¦¦¦¦¦¦¦¦¦++¦¦¦¦¦¦¦+¦¦¦¦¦+  ¦¦¦¦¦¦++
¦¦+---+ ¦¦+--¦¦+¦¦¦   ¦¦¦    ¦¦+---+ ¦¦+--¦¦¦¦¦+--¦¦++----¦¦¦¦¦+--+  ¦¦+--¦¦+
¦¦¦     ¦¦¦  ¦¦¦+¦¦¦¦¦¦++    ¦¦¦     ¦¦¦  ¦¦¦¦¦¦  ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+¦¦¦  ¦¦¦
+-+     +-+  +-+ +-----+     +-+     +-+  +-++-+  +-++------++------++-+  +-+
                                                                             
                                                                                 

Welcome To DonJujis Pro Parser, Press Enter To Continue'

clear

PS3='




 ¦¦¦¦¦¦+¦¦+  ¦¦+ ¦¦¦¦¦¦+  ¦¦¦¦¦¦+ ¦¦¦¦¦¦¦+¦¦¦¦¦¦¦+    ¦¦+   ¦¦+¦¦¦¦¦¦+ 
¦¦+----+¦¦¦  ¦¦¦¦¦+---¦¦+¦¦+---¦¦+¦¦+----+¦¦+----+    ¦¦¦   ¦¦¦¦¦+--¦¦+
¦¦¦     ¦¦¦¦¦¦¦¦¦¦¦   ¦¦¦¦¦¦   ¦¦¦¦¦¦¦¦¦¦+¦¦¦¦¦+      ¦¦¦   ¦¦¦¦¦¦¦¦¦++
¦¦¦     ¦¦+--¦¦¦¦¦¦   ¦¦¦¦¦¦   ¦¦¦+----¦¦¦¦¦+--+      ¦¦¦   ¦¦¦¦¦+---+ 
+¦¦¦¦¦¦+¦¦¦  ¦¦¦+¦¦¦¦¦¦+++¦¦¦¦¦¦++¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+    +¦¦¦¦¦¦++¦¦¦     
 +-----++-+  +-+ +-----+  +-----+ +------++------+     +-----+ +-+     
                                                                       


 '
options=("Domain Swap" "Add Numbers And Swap Case" "EmailName & Password Swap" "Password Numbers To Email Numbers Replace" "Birth Date Append & Truncate Edit" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Domain Swap")

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'

echo 'Isolating All Strings Containing Gmail Domains'

grep -riah -E ".*@gmail.com.*" $file > gmailmove.txt

echo 'Swapping Domain Of All Gmail Strings To Hotmail'
			
sed -E "s/@.*:/@hotmail.com:/" gmailmove.txt > gmailtohotmail.txt            		

echo 'Swapping Domain Of All Gmail Strings To Yahoo'
			
sed -E "s/@.*:/@yahoo.com:/" gmailmove.txt > gmailtoyahoo.txt            		

echo 'Removing All Strings Containing Gmail Domains'

grep -riahv -E ".*@gmail.com.*" $file > gmailremoved.txt

echo 'Swapping Domain Of All Remaining Strings Containing Non-Gmail Domains To Gmail'
			
sed -E "s/@.*:/@gmail.com:/" gmailremoved.txt > gmailadded.txt            		

echo 'Merging Domain Edits'

grep -riah -E "(.*)" gmailadded.txt > mergeddomains.txt

grep -riah -E "(.*)" gmailtohotmail.txt >> mergeddomains.txt

grep -riah -E "(.*)" gmailtoyahoo.txt >> mergeddomains.txt

echo 'Lines Successfully Domain Swapped'

echo 'Deduping And Randomizing Strings Please Be Patient This May Take A While!!!'

LC_ALL=C sort -Ru mergeddomains.txt > domainswappedtarget.txt

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
       
        "EmailName & Password Swap")
            

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file

ls -l '$file'

dos2unix $file

echo 'Swapping EmailName With Password'

sed -E 's/^(.*)(@.*:)(.*)/\3\2\1/' $file > swapped.txt

echo 'Removing Special Chars From Swapped Password'

sed -E 's/(.*:.*)[_.-]/\1/' swapped.txt > specialcharfilter.txt

echo 'Adding Numbers To Lines With No Numbers'

sed -E 's/(.*:[a-z]{1,40}$)/\1123/' specialcharfilter.txt > parsedemailnameswap.txt

echo 'Deduping And Randomizing Strings Please Be Patient This May Take A While!!!'

LC_ALL=C sort -Ru parsedemailnameswap.txt > emailnameresult.txt

clear

echo 'Strings Successfully Obfuscated!!!'

echo 'Job Done, Cleaning Up Temporary Files'

rm prequalifynum2nonum.txt
rm num2nonumresult.txt
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
"Password Numbers To Email Numbers Replace")

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'

dos2unix $file

echo 'Prequalifying Lines For Transfer'

grep -riah -E '^([a-z!@#$%&*._-]{1,25})([0-9]{1,16})(@.*:)([a-z!@#$%&*._-]{1,20})([0-9]{1,16}$)' $file > prequalifypass2num.txt

echo 'Replacing Numbers'

sed -E 's/^([a-z!@#$%&*._-]{1,25})([0-9]{1,16})(@.*:)([a-z!@#$%&*._-]{1,20})([0-9]{1,16}$)/\1\2\3\4\2/' prequalifypass2num.txt > parsedpass2num.txt

echo 'Deduping And Randomizing Strings Please Be Patient This May Take A While!!!'
 
LC_ALL=C sort -Ru parsedpass2num.txt > pass2numresult.txt

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
"Birth Date Append & Truncate Edit")

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'

dos2unix $file

echo 'Prequalifying 20th Century Lines With 2 Digit Appendages'

grep -riah -E '.*[a-z!@#$%^*_=+.-][6-9][0-9]$' $file > prequalify2digit20thnumext.txt

echo 'Extending Numbers'

sed -E 's/(..$)/19\1/' prequalify2digit20thnumext.txt  > 19added.txt

echo 'Prequalifying 21st Century Lines With 2 Digit Appendages'

grep -riah -E '.*[a-z!@#$%^*_=+.-]0[0-9]$' $file > prequalify2digit21stnumext.txt

echo 'Extending Numbers'

sed -E 's/(..$)/19\1/' prequalify2digit21stnumext.txt  > 20added.txt

echo 'Adding Extended Together Lines'

cat 19added.txt >> 20added.txt

cat 20added.txt > extendedmix.txt

echo 'Prequalifying 20th Century Lines With 4 Digit Appendages'

grep -riah -E '.*[a-z!@#$%^*_=+.-]19[6-9][0-9]$' $file > prequalify4digit20thnumext.txt

echo 'Truncating Numbers'

sed -E 's/..(..$)/\1/' prequalify4digit20thnumext.txt  > 19truncated.txt

echo 'Prequalifying 21st Century Lines With 4 Digit Appendages'

grep -riah -E '.*[a-z!@#$%^*_=+.-]20[6-9][0-9]$' $file > prequalify4digit21stnumext.txt

echo 'Truncating Numbers'

sed -E 's/..(..$)/\1/' prequalify4digit21stnumext.txt  > 20truncated.txt

echo 'Adding Truncated Lines Together'

cat 19truncated.txt >> 20truncated.txt 

cat 20truncated.txt > truncatedmix.txt

echo 'Adding Truncated Lines To Extended Lines'

cat truncatedmix.txt >> extendedmix.txt

cat extendedmix.txt > finalmix.txt

echo 'Done, Combo Successfully Obfuscated'

echo 'Deduping And Randomizing Strings Please Be Patient This May Take A While!!!'

LC_ALL=C sort -Ru finalmix.txt > parsedbirthyearedit.txt

clear

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
