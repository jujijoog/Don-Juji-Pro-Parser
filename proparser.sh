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
options=("Domain Swap" "Add Numbers" "Case Swap" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Domain Swap")

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'

  						echo 'Removing Gmail Domains'


						grep -riahv -E ".*@gmail.com.*" $file > gmailremoved.txt

						echo 'Swapping All Remaining Combo Domains To Gmail'
			
						sed -E "s/@.*:/@gmail.com:/" gmailremoved.txt > gmailadded.txt
            		


echo 'Combo Successfully Domainswapped'

echo 'Deduping And Randomizing Combo'

LC_ALL=C sort -Ru gmailadded.txt > domainswappedtarget.txt

clear

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
        "Add Numbers")
            

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'


grep -riahv -E ':.*[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9].*' $file > nonumbers.txt

clear

grep -rah -E '(:[A-Z])' nonumbers.txt > unparsedupper.txt

echo 'Finding Lines Containing Passwords Without Numeric Appendages' 

sed -e 's/\(:[A-Z]\)/\L\1/' unparsedupper.txt > parsedlower.txt

echo 'Parsing Job 5% Done'

grep -rah -E '(:[a-z])' nonumbers.txt > unparsedlower.txt

sed -e 's/\(:[a-z]\)/\U\1/' unparsedlower.txt > parsedupper.txt

echo 'Swapping Case On First Letter Of Numeric-Absent-Appended Lines' 

echo 'Parsing Job 10% Done'

cat parsedupper.txt >> parsedmix.txt

cat parsedlower.txt >> parsedmix.txt

cat nonumbers.txt >> parsedmix.txt

echo 'Parsing Job 15% Done'

sed -E 's/(.*)/\11/' parsedmix.txt > parsedmix1added.txt

echo 'Adding 1s To All Numeric-Absenst-Appended Lines'

sed -E 's/(.*)/\1123/' parsedmix.txt > parsedmix123added.txt

echo 'Parsing Job 25% Done'

cat parsedmix1added.txt > numbersmix.txt

echo 'Adding 123s To All Numeric-Absent-Ended Lines'

cat parsedmix123added.txt >> numbersmix.txt

echo 'Mixing 1 and 123 Appended Lines'

grep -rah -E '(:[A-Z])' $file > unparsedupperall.txt

echo 'Parsing Job 50% Done'

sed -e 's/\(:[A-Z]\)/\L\1/' unparsedupperall.txt > parsedlowerall.txt

echo 'Swapping Case On Pre-existing Numerically Appended Lines'

grep -rah -E '(:[a-z])' $file.txt > unparsedlowerall.txt

echo 'Parsing Job 70% Done'

sed -e 's/\(:[a-z]\)/\U\1/' unparsedlowerall.txt > parsedupperall.txt

echo 'Mixing Both Cases On Pre-existing Numerically Appended Lines'

cat parsedupperall.txt > allmix.txt

echo 'Parsing Job 90% Done'

cat parsedlowerall.txt >> allmix.txt 

echo 'Mixing All Created New Lines'

cat numbersmix.txt > finalmix.txt

cat allmix.txt >> finalmix.txt

clear

echo 'Combo Successfully Obfuscated!!!'

echo 'Deduping And Randomizing Combo'

LC_ALL=C sort -Ru finalmix.txt > numberandcasetarget.txt

clear

echo 'Job Done, Cleaning Up Temporary Files'

clear


rm nonumbers.txt 

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
       
        "Case Swap")
            

read -e -p 'Bro Plz, enter that combo, Plz bro?: ' file
ls -l '$file'


grep -rah -E '(:[A-Z])' $file > unparsedupperall.txt

echo 'Parsing Job 10% Done'

sed -e 's/\(:[A-Z]\)/\L\1/' unparsedupperall.txt > parsedlowerall.txt

echo 'Swapping Case On All Lines'

grep -rah -E '(:[a-z])' $file.txt > unparsedlowerall.txt

echo 'Parsing Job 35% Done'

sed -e 's/\(:[a-z]\)/\U\1/' unparsedlowerall.txt > parsedupperall.txt

echo 'Mixing Both Cases On All Lines'

cat parsedupperall.txt > allmix.txt

echo 'Parsing Job 90% Done'

cat parsedlowerall.txt >> caseswapmix.txt 

echo 'Combo Successfully Caseswapped'

echo 'Deduping And Randomizing Combo'

LC_ALL=C sort -Ru caseswapmix.txt > caseswappedtarget.txt

clear

echo 'Job Done, Cleaning Up Temporary Files'

rm unparsedupperall.txt

rm unparsedlowerall.txt

rm parsedupperall.txt

rm parsedlowerall.txt

rm allmix.txt


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
