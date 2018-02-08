********************************************************************************
*Data cleaning do file
* 18th Feb 2018
* Chris Mwungu
********************************************************************************
cd "C:\Users\Chris Mwungu\Desktop\Final Data"

clear all
set more off

** MODULE A**

use "Module A"
*Organizing identifying  variable
order hhid
sort hhid

*Dropping repeated variables
drop a01b a02b a03b a04b a05b a06b

*Changing time to numeric
gen double int_start = clock(a13, "hms") 
format int_start %tc_HH:MM:SS

move int_start a14
drop a13
rename int_start a13
la var a13 "Time Interview Starts"

*Changing date to numeric
gen double date_start = clock(a12, "YMD") 
format date_start %tc_Y-M-D
move date_start a13
drop a12
rename date_start a12
la var a12 "Date of Interview"

*saving finalized data
save "Module A", replace
clear all

********************************************************************************

** MODULE B**
use "Module B"
*Organizing identifying  variable
order hhid
sort hhid

*Destring b02
replace b02 = "1" if  b02 == "ACCIDENT"
replace b02 = "1" if  b02 == "ACCIDENT OF A MEMBER"
replace b02 = "3" if  b02 == "ANIMAL DEATH"
replace b02 = "2" if  b02 == "ANIMALS DISEASE ATTACKS"
replace b02 = "4" if  b02 == "ATTACK OF WILD ANIMALS"
replace b02 = "4" if  b02 == "ATTACK OF WILD ANIMALS"
replace b02 = "5" if  b02 == "BEATING BY THE SON"
replace b02 = "8" if  b02 == "BLINDNESS"
replace b02 = "6" if  b02 == "BURNING OF THE HOUSE"
replace b02 = "12" if  b02 == "CLIMATIC SEASONAL CHANGE"
replace b02 = "7" if  b02 == "CROP DESEASES"
replace b02 = "7" if  b02 == "CROP DISEASE"
replace b02 = "7" if  b02 == "CROP DISEASE ATTACK"
replace b02 = "7" if  b02 == "CROP DISEASE ATTACK, SIM SIM"
replace b02 = "7" if  b02 == "CROP DISEASES"
replace b02 = "7" if  b02 == "CROP FAILURE"
replace b02 = "7" if  b02 == "CROP LOSS"
replace b02 = "13" if  b02 == "CROP PEST AND DISEASES"
replace b02 = "7" if  b02 == "CROPS  FAILURE"
replace b02 = "4" if  b02 == "CROPS DESTRUCTION BY ELEPHANT"
replace b02 = "7" if  b02 == "CROPS FAILURE"
replace b02 = "10" if  b02 == "DEAD OF DEAR ONES"
replace b02 = "10" if  b02 == "DEATH"
replace b02 = "10" if  b02 == "DEATH GRANDMOTHER"
replace b02 = "10" if  b02 == "DEATH OF A HOUSEHOLD MEMBER"
replace b02 = "10" if  b02 == "DEATH OF A LOVED ONE"
replace b02 = "10" if  b02 == "DEATH OF A RELATIVE"
replace b02 = "10" if  b02 == "DEATH OF CHILD"
replace b02 = "10" if  b02 == "DEATH OF FAMILY MEMBERS"
replace b02 = "10" if  b02 == "DEATH OF HER DAUGHTER"
replace b02 = "10" if  b02 == "DEATH OF HH MEMBER"
replace b02 = "3" if  b02 == "DEATH OF LIVESTOCK"
replace b02 = "3" if  b02 == "DEATH OF LIVESTOCK DUE TO DISEASE"
replace b02 = "10" if  b02 == "DEATH OF THE MOTHER AND FATHER"
replace b02 = "11" if  b02 == "DESTRUCTION OF CROPS BY DOMESTIC ANIMALS"
replace b02 = "8" if  b02 == "DISEASES"
replace b02 = "8" if  b02 == "DISEASES ON HUMAN"
replace b02 = "5" if  b02 == "DIVORCE"
replace b02 = "12" if  b02 == "DRAUGHT"
replace b02 = "12" if  b02 == "DROPBOX"
replace b02 = "12" if  b02 == "DROUGHT"
replace b02 = "12" if  b02 == "DROUGHT /TOO MUCH SUNSHINE"
replace b02 = "12" if  b02 == "DROUGHT/TOO MUCH SUNSHINE"
replace b02 = "4" if  b02 == "ELEPHANT INVASION"
replace b02 = "4" if  b02 == "ELEPHANTS"
replace b02 = "12" if  b02 == "EXCESS RAIN"
replace b02 = "12" if  b02 == "EXCESS RAINFALL"
replace b02 = "12" if  b02 == "EXTREME SUNSHINE"
replace b02 = "12" if  b02 == "FLOOD"
replace b02 = "12" if  b02 == "FLOODS"
replace b02 = "9" if  b02 == "HOUSE BURNING"
replace b02 = "9" if  b02 == "HOUSE BURNT"
replace b02 = "9" if  b02 == "HOUSE GOT BURNT"
replace b02 = "10" if  b02 == "HUMA DEATH"
replace b02 = "10" if  b02 == "HUMAN DEATH"
replace b02 = "8" if  b02 == "HUMAN DISEASE"
replace b02 = "8" if  b02 == "HUMAN DISEASE ATTACK"
replace b02 = "8" if  b02 == "HUMAN SICKNESS"
replace b02 = "10" if  b02 == "I LOST LIFE"
replace b02 = "5" if  b02 == "LAND RWANGLE."
replace b02 = "5" if  b02 == "LAND WRANGLE"
replace b02 = "2" if  b02 == "LIVESTOCK DISEASES"
replace b02 = "10" if  b02 == "LOSS OF A CHILD"
replace b02 = "10" if  b02 == "LOSS OF A FAMILY MEMBER"
replace b02 = "10" if  b02 == "LOSS OF A LOVED ONE"
replace b02 = "3" if  b02 == "LOSS OF DROUGHT ANIMALS"
replace b02 = "10" if  b02 == "LOSS OF FAMILY MEMBER"
replace b02 = "10" if  b02 == "LOSS OF LIFE"
replace b02 = "10" if  b02 == "LOSS OF LIFES"
replace b02 = "10" if  b02 == "LOSS OF LOVED ONES"
replace b02 = "7" if  b02 == "LOST OF CROPS"
replace b02 = "10" if  b02 == "LOST OF MY FATHER."
replace b02 = "10" if  b02 == "LOST WIFE"
replace b02 = "7" if  b02 == "LOW CROP YEILD"
replace b02 = "7" if  b02 == "LOW CROP YIELD"
replace b02 = "1" if  b02 == "MOTOR ACCIDENT"
replace b02 = "9" if  b02 == "MY HOUSE GOT BURNT"
replace b02 = "7" if  b02 == "PEST AND CROP DISEASES"
replace b02 = "7" if  b02 == "PEST AND DESEASES"
replace b02 = "7" if  b02 == "PEST AND DISEASES"
replace b02 = "7" if  b02 == "PESTS LIKE MONKEYS"
replace b02 = "7" if  b02 == "POOR CROP YIELDS"
replace b02 = "12" if  b02 == "POOR WEATHER"
replace b02 = "12" if  b02 == "PROLONGED DROUGHT"
replace b02 = "12" if  b02 == "PROLONGED SUNSHINE"
replace b02 = "8" if  b02 == "SICKNESS"
replace b02 = "8" if  b02 == "SICKNESS  OF FAMILY HEAD"
replace b02 = "8" if  b02 == "SICKNESS AND DEATH"
replace b02 = "8" if  b02 == "SICKNESS OF A HOUSEHOLD  MEMBER"
replace b02 = "8" if  b02 == "SICKNESS OF A MEMBER"
replace b02 = "8" if  b02 == "SICKNESS OF FAMILY"
replace b02 = "8" if  b02 == "SICKNESS OF FAMILY MEMBER"
replace b02 = "8" if  b02 == "SICKNESS OF FAMILY MEMBERS"
replace b02 = "8" if  b02 == "SICKNESS OF HH MEMBER"
replace b02 = "8" if  b02 == "SICKNESS OF HOUSEHOLD MEMBER"
replace b02 = "8" if  b02 == "SICKNESS OF THE HOUSEHOLD HEAD"
replace b02 = "8" if  b02 == "SICKNESS OOF A HOUSEHOLD MEMBER"
replace b02 = "6" if  b02 == "SOMEONE BURNT ALL HUTS"
replace b02 = "13" if  b02 == "SPOUSE IMPRISONED"
replace b02 = "16" if  b02 == "THEFT"
replace b02 = "12" if  b02 == "TOO MUCH RAIN"
replace b02 = "12" if  b02 == "TOO MUCH RAINFALL"
replace b02 = "12" if  b02 == "TOO MUCH SUNSHINE"
replace b02 = "12" if  b02 == "TOO SUNSHINE"
replace b02 = "12" if  b02 == "UNBALANCED SEASONAL CHANGES"
replace b02 = "12" if  b02 == "UNEXPECTED DRYSPELL"
replace b02 = "12" if  b02 == "UNEXPECTED LONG SUNSHINE"
replace b02 = "12" if  b02 == "UNEXPECTED PROLONGED DRYSPELL"
replace b02 = "12" if  b02 == "UNFAVOURABLE WEATHER"
replace b02 = "12" if  b02 == "UNFAVOURABLE WEATHER-HEAVY RAIN"
replace b02 = "12" if  b02 == "UNFAVOURABLE WEATHER-HEAVY RAINS"
replace b02 = "12" if  b02 == "UNRELLIABLE WEATHER CONDITION"
replace b02 = "12" if  b02 == "UNRELLIABLE WEATHER CONDITION."
replace b02 = "7" if  b02 == "WEEDS"
replace b02 = "4" if  b02 == "WILD ANIMAL"
replace b02 = "4" if  b02 == "WILD ANIMALS"
replace b02 = "4" if  b02 == "WILD ANIMALS."
replace b02 = "14" if  b02 == "WILD FIRE"
replace b02 = "9" if  b02 == "WILD FIRE BURNT THE HOUSE"
replace b02 = "15" if  b02 == "WITCHCRAFT"
replace b02 = "4" if  b02 == "ATTACK BY ELEPHANTS"

destring b02, replace 

#delimit ;
label define bo2
1 "Accident"
2 "Animal Diseases"
3 "Animal Death"
4 "Attacked by wildlife"
5 "Family Wrangles"
6 "Main house burned"
7 "Crops loss, Diseases and pests"
8 "Family Sicknesses"
9 "Burning of the house"
10 "Death of family member"
11 "Domestic livestock destroyed crops"
12 "Climatic shocks"
13 "Imprisonment"
14 "Wild Fire"
15 "Witchcraft"
16 "Theft of properties"
;
#delimit cr

la values b02 bo2

recode b02 (9=6)

replace b03b = "1" if  b03b == "excess rain affected yield of most crops"
replace b03b = "1" if  b03b == "lossed crops prematurely"
replace b03b = "1" if  b03b == "crops were destroyed hence limiting income source"
replace b03b = "1" if  b03b == "crops did not perform well and they earned little"
replace b03b = "2" if  b03b == "more work"
replace b03b = "3" if  b03b == "I have spent all the money I had for burial."
replace b03b = "1" if  b03b == "Cash crops were destroyed and i had nothing to sell to raise income."
replace b03b = "1" if  b03b == "little produce"
replace b03b = "1" if  b03b == "crops failed"
replace b03b = "1" if  b03b == "He had planted alot crops in the garden and when sickness struck him his crops died in the garden and had nothing to sale."
replace b03b = "4" if  b03b == "got less energy to work for money for basic needs"
replace b03b = "3" if  b03b == "She did not have what to grow and get money due to the extreme sunshine."
replace b03b = "3" if  b03b == "lowered income due to spending on treatment"
replace b03b = "4" if  b03b == "i became disabled and cant do casual work to raise money"
replace b03b = "1" if  b03b == "liitle harvest was realised so we couldn't sell them"
replace b03b = "1" if  b03b == "bought drugs"
replace b03b = "3" if  b03b == "it destroyed groundnuts and maize that was meznt to earn income"
replace b03b = "1" if  b03b == "reduced income, spent on treatment"
replace b03b = "3" if  b03b == "spent alotbon treatment"
replace b03b = "3" if  b03b == "REDUCED ON THE EXPECTATION OF INCOME"
replace b03b = "3" if  b03b == "buying food and paying hospital bills"
replace b03b = "5" if  b03b == "reduced household income"
replace b03b = "4" if  b03b == "She lost strength to work in order to get money hence affecting her income."
replace b03b = "1" if  b03b == "lower crop yield for sale"
replace b03b = "4" if  b03b == "time taken up in hospital"
replace b03b = "1" if  b03b == "The crops they grow and get money was damaged by sun that was too much."
replace b03b = "3" if  b03b == "sold houshold asset to generate money"
replace b03b = "6" if  b03b == "She lost her properties in the house."
replace b03b = "1" if  b03b == "were not able to harvest cassava for sale"
replace b03b = "3" if  b03b == "used resources"
replace b03b = "3" if  b03b == "I spent a lot right from the hospital and later loose their life."
replace b03b = "3" if  b03b == "used up resources for sale"
replace b03b = "1" if  b03b == "This was too much that our crops were destroyed totally and i had nothing to sell to get money."
replace b03b = "3" if  b03b == "i now spends alot of money than i get so that i can keep the orphans with me"
replace b03b = "4" if  b03b == "lack of casual labour."
replace b03b = "4" if  b03b == "didnt weed my garden when i was sick and it affected my harvest for sale"
replace b03b = "1" if  b03b == "had no food items for sale"
replace b03b = "5" if  b03b == "Couldn't  attain required  daily  income need"
replace b03b = "1" if  b03b == "CROPS WERE DESTROYED BY DOMESTIC ANIMALS LEADING TO LIMITED INCOME IN THE FAMILY"
replace b03b = "3" if  b03b == "reduced on the expectations of income"
replace b03b = "4" if  b03b == "farm labour and  harvest were reduced"
replace b03b = "3" if  b03b == "reduced on the income expectations"
replace b03b = "5" if  b03b == "little income obtained due to low harvest"
replace b03b = "3" if  b03b == "spent money to buy other food"
replace b03b = "1" if  b03b == "no sells of crops due to low harvest hence limited income"
replace b03b = "1" if  b03b == "crops were dried in da garden  limiting income in the household"
replace b03b = "5" if  b03b == "land was not accesible for farming and bussiness"
replace b03b = "1" if  b03b == "loss crops; the major source of income"
replace b03b = "1" if  b03b == "dried rice and and groundnut leading to low income"
replace b03b = "3" if  b03b == "I had a lot of debt to pay back because i had borrowed much from others."
replace b03b = "1" if  b03b == "low harvest and low sells of crops hence low income"
replace b03b = "4" if  b03b == "spent more time in hospital"
replace b03b = "1" if  b03b == "low yied led to low income due to low sells"
replace b03b = "5" if  b03b == "reduced household income since there was little harvest"
replace b03b = "1" if  b03b == "little harvest made me spent savings to buy other things"
replace b03b = "3" if  b03b == "spent alot on treatment"
replace b03b = "1" if  b03b == "low yield led to low harvest hence low income"
replace b03b = "1" if  b03b == "little harvest"
replace b03b = "1" if  b03b == "i didn't harvest what I expected to sell."
replace b03b = "4" if  b03b == "limits farm work"
replace b03b = "3" if  b03b == "I spent a lot of money in the hospital."
replace b03b = "5" if  b03b == "I had no where to dig and i can't get money as a result of this."
replace b03b = "1" if  b03b == "low harvest,"
replace b03b = "5" if  b03b == "REDUCED SOURCE OF INCOME"
replace b03b = "1" if  b03b == "destroyed crops hence little harvest and sells leading to low income"
replace b03b = "3" if  b03b == "USED ALOT OF MONEY FOR TREATMENT"
replace b03b = "5" if  b03b == "reduced on the income expectations"
replace b03b = "3" if  b03b == "spent money on insecticides"
replace b03b = "1" if  b03b == "lowered crop yield therefore reduced income"
replace b03b = "4" if  b03b == "reduce her ability to do casual labour"
replace b03b = "5" if  b03b == "cotton cash crop were scotch by drought"
replace b03b = "1" if  b03b == "all the crop products stored which others were meant to earn some income got burnt"
replace b03b = "1" if  b03b == "crop yield reduce hence no sale"
replace b03b = "5" if  b03b == "they used to sell to earn income but they lost due to this shock"
replace b03b = "3" if  b03b == "i spent aloton production but realised very little Income"
replace b03b = "4" if  b03b == "we export casual labours to eran money but the land was too hard during dry season  therefor we couldn't  get enough money"
replace b03b = "3" if  b03b == "I spent the little money i have for vertinary services"
replace b03b = "1" if  b03b == "low income due to low harvest"
replace b03b = "3" if  b03b == "Everything in the house got burnt and they had to use the money that would have improved their standard of living to buy new things."
replace b03b = "1" if  b03b == "there was too much  crops failure so didnt have enough harvest for sale"
replace b03b = "3" if  b03b == "spending money in transportation and hospital bills"
replace b03b = "3" if  b03b == "spent on treatment and burial ceremonies"
replace b03b = "3" if  b03b == "They spent alot of money treating their grandmother."
replace b03b = "3" if  b03b == "spent household income for burial arrangements"
replace b03b = "4" if  b03b == "Could not do physical work anymore"
replace b03b = "4" if  b03b == "labour on income generation was reduced"
replace b03b = "1" if  b03b == "low harvest led to low sells and income"
replace b03b = "1" if  b03b == "little harvest led to low sell hence low income"
replace b03b = "3" if  b03b == "The house burnt with everything that she had spent on alot of money."
replace b03b = "5" if  b03b == "She didn't  have anything  to sale to earn."
replace b03b = "3" if  b03b == "Spent all i had for medication."
replace b03b = "1" if  b03b == "low yields of crops as a result of too much flood leading to limited source of income"
replace b03b = "5" if  b03b == "As farmer i get money on harvest and if it's spoiled you have money."
replace b03b = "3" if  b03b == "I spent a lot in the hospital."
replace b03b = "1" if  b03b == "the crops did not yield well hence less income"
replace b03b = "3" if  b03b == "they spent money in farming but the produce from the farm was low hence less income"
replace b03b = "1" if  b03b == "Nothing to sell and earn from since crops were  destroyed"
replace b03b = "1" if  b03b == "very low harvest led to low income"
replace b03b = "1" if  b03b == "Crop harvest was very poor"
replace b03b = "1" if  b03b == "low harvest led to low income"
replace b03b = "3" if  b03b == "Household income demand increased"
replace b03b = "1" if  b03b == "very little harvest led to no sells hence low income"
replace b03b = "1" if  b03b == "Money spend on farm labour was not recovered due to crop loss"
replace b03b = "5" if  b03b == "Did not recover income invested in crop farming"
replace b03b = "4" if  b03b == "It was had for her to grow crops and sale just  because  she was ill."
replace b03b = "1" if  b03b == "low yields of crops in the household leading to limited source of income"
replace b03b = "3" if  b03b == "treatment and transport cost money"
replace b03b = "3" if  b03b == "spent household income on treatment"
replace b03b = "3" if  b03b == "Used up household income on burial arrangements"
replace b03b = "5" if  b03b == "She doesn't havd enough to sale and get some money."
replace b03b = "1" if  b03b == "low yields of crops leading to limited source of income"
replace b03b = "1" if  b03b == "low harvest of crops led to low sells and income"
replace b03b = "4" if  b03b == "The land wrangle caused the death of her husband and that weakend their  capacity  to work together  and earn more."
replace b03b = "3" if  b03b == "spent on treatment and burial processes"
replace b03b = "4" if  b03b == "I was weak and couldn't go to the market to sell because I was a business woman also."
replace b03b = "3" if  b03b == "money wss spent for treatment hence reduction in income"
replace b03b = "3" if  b03b == "spent a lot of money in the hospital"
replace b03b = "5" if  b03b == "limited income for the household"
replace b03b = "1" if  b03b == "low source of income due to low yields of crops"
replace b03b = "1" if  b03b == "low harvest led to low sells and income"
replace b03b = "1" if  b03b == "low yields leading to limited income in the household"
replace b03b = "1" if  b03b == "low harvest led to low income"
replace b03b = "1" if  b03b == "low harvest which led to low income"
replace b03b = "1" if  b03b == "low harvest led to low income"
replace b03b = "1" if  b03b == "harvest was very low because the crops got stunted hence little income"
replace b03b = "3" if  b03b == "going to the hospital and paying hospital bills"
replace b03b = "5" if  b03b == "could not earn income out of agriculture"
replace b03b = "3" if  b03b == "borrow money for treatment"
replace b03b = "4" if  b03b == "Did not cultivate enough; and had nothing to sell"
replace b03b = "3" if  b03b == "spent alot of money on taking care of the mouners"
replace b03b = "4" if  b03b == "Couldn't provide labour for income"
replace b03b = "3" if  b03b == "used up savings of the household for treatment"
replace b03b = "1" if  b03b == "low crop yield, lowered income level"
replace b03b = "5" if  b03b == "money invested was not recovered because of low yield"
replace b03b = "3" if  b03b == "Treatment took alot of  money"
replace b03b = "3" if  b03b == "Household income was lowered due to more expense than inflow"
replace b03b = "3" if  b03b == "spent most of the times in the hospital"
replace b03b = "1" if  b03b == "The crops that they get money from  failed and it resulted into low income."
replace b03b = "3" if  b03b == "I spent much money on the burial right from feeding to buying other things like cement."
replace b03b = "1" if  b03b == "Por weathet led to failure of his crops hence affecting his income."
replace b03b = "1" if  b03b == "The crops that she planted was the one she depended on for income and she could not sale what is not there."
replace b03b = "3" if  b03b == "I spent a lot of money in the hospital."
replace b03b = "5" if  b03b == "The money he used to cultivate his crops never came back hence pushing him backward."
replace b03b = "1" if  b03b == "Crops were destroyed and I had nothing to sell."
replace b03b = "3" if  b03b == "Spent much of the time in the the hospital."
replace b03b = "1" if  b03b == "The sun destroyed  most of his crops that he sale and earns."
replace b03b = "4" if  b03b == "I'm became weak and can't now work for money."
replace b03b = "3" if  b03b == "Had a sudden increase in health expenses"
replace b03b = "1" if  b03b == "low harvest hence low income"
replace b03b = "3" if  b03b == "I spent a lot as in paying medical bill."
replace b03b = "5" if  b03b == "reduced income in the family"
replace b03b = "3" if  b03b == "alot of money was spent in the hospital reducing income level in the household"
replace b03b = "1" if  b03b == "The crops failed in the  garden and she did not have what  to sale and earn money."
replace b03b = "1" if  b03b == "low harvest led to low income"
replace b03b = "3" if  b03b == "The bulls were hired for ploughing as source of money"
replace b03b = "5" if  b03b == "Household income inflow was affected. The oxens were no longer being hired"
replace b03b = "3" if  b03b == "money went in paying hospital bills"
replace b03b = "1" if  b03b == "destroys crops meant to earn"
replace b03b = "3" if  b03b == "spent all saved money"
replace b03b = "1" if  b03b == "Crops affected and i can't find what to get money from."
replace b03b = "1" if  b03b == "low harvest led to low income"
replace b03b = "1" if  b03b == "groundnut and rice did not perform well because most of them wilted"
replace b03b = "3" if  b03b == "spent alot of money and harvested less"
replace b03b = "1" if  b03b == "it destroyed crops in the garden leading to less income"
replace b03b = "1" if  b03b == "they had hope of getting income from the crops but they wilted and did not get enough income"
replace b03b = "5" if  b03b == "The household lost guts to do farming to get money"
replace b03b = "4" if  b03b == "could not work to get income"
replace b03b = "6" if  b03b == "ASSETS WERE BURNT THEY STARTED FROM ZERO WHICH REDUCED THEIR INCOME"
replace b03b = "1" if  b03b == "no harvest led to no sells hence limited income"
replace b03b = "1" if  b03b == "there was low harvest and low sells hence low income"
replace b03b = "1" if  b03b == "The crops failure affected her income since there was nothing much to sale"
replace b03b = "6" if  b03b == "My properties including money was also affected."
replace b03b = "5" if  b03b == "harvest is household major income source"
replace b03b = "5" if  b03b == "limited income source for the family since there was low yields of crops"
replace b03b = "1" if  b03b == "little harvest led to little income"
replace b03b = "1" if  b03b == "Destroyed crops, reducing income of the household"
replace b03b = "1" if  b03b == "The peanuts failed and they had nohing much to sale."
replace b03b = "6" if  b03b == "money was stolen"
replace b03b = "3" if  b03b == "I spent a lot of money on burrial in the hospital."
replace b03b = "3" if  b03b == "We spent a lot of money in the hospital."
replace b03b = "4" if  b03b == "She was sick and could not grow food for any economic purpose."
replace b03b = "1" if  b03b == "They destroy what they would have harvested and sold."
replace b03b = "1" if  b03b == "This always affect our crops and it makes it hard to get what to sell to get money."
replace b03b = "3" if  b03b == "She spent her money in medication intead of doing other things."
replace b03b = "1" if  b03b == "Always if the crops are destroyed we have nothing else to get money from."
replace b03b = "4" if  b03b == "reduced on household labour"
replace b03b = "3" if  b03b == "spent money on burial expense"
replace b03b = "3" if  b03b == "Spend most times nursing than in income generation"
replace b03b = "1" if  b03b == "little yield which led to no sells hence no limited income"
replace b03b = "3" if  b03b == "alot of income was lost in burial and treatments"
replace b03b = "1" if  b03b == "wild animals destroyed maize and other crops hence less income"
replace b03b = "3" if  b03b == "money used for treatment,  transport and feeding"
replace b03b = "5" if  b03b == "reduced on the income expectations of the family"
replace b03b = "1" if  b03b == "crops were destroyed leading to limited income"
replace b03b = "1" if  b03b == "Destroyed crops which are sources of income"
replace b03b = "5" if  b03b == "reduced on the source of income"
replace b03b = "1" if  b03b == "The elephant destroyed  their  crops on which they had spent alot of money and their money did not  come back  as they  wanted."
replace b03b = "5" if  b03b == "limited source of income"
replace b03b = "1" if  b03b == "I had nothing to sell because everything are destroyed by elephants."
replace b03b = "1" if  b03b == "the elephants destroy crops hence no income"
replace b03b = "1" if  b03b == "destroyed crops which were sources of income"
replace b03b = "1" if  b03b == "groundnuts and other crops did not yield well hence little income"
replace b03b = "4" if  b03b == "The sickness  made her too weak to cultivate hence affecting her earning."
replace b03b = "5" if  b03b == "reduced income in the family"
replace b03b = "4" if  b03b == "could do income geneating activities"
replace b03b = "4" if  b03b == "It becomes hard to find what to sell to raise money."
replace b03b = "3" if  b03b == "spent income on treatment in Lacor Hospital"
replace b03b = "4" if  b03b == "weakness leading less production hence no income"
replace b03b = "3" if  b03b == "spent all money on burial expense"
replace b03b = "3" if  b03b == "They spent lots of money in the hospital because  of the sickness."
replace b03b = "1" if  b03b == "little harvest led to little sells hence low income"
replace b03b = "1" if  b03b == "very low harvest which led to low income"
replace b03b = "3" if  b03b == "They spent  a lot  of money in the burial process and that dug deep down in their pocket"
replace b03b = "1" if  b03b == "reduced income source since nothing was harvested"
replace b03b = "3" if  b03b == "borrowed money to pay hospital bills"
replace b03b = "1" if  b03b == "had less sales due to poor harvest"
replace b03b = "3" if  b03b == "I wasted a lot on transport and medical bill."
replace b03b = "3" if  b03b == "spent most of the income in medical treatment"
replace b03b = "5" if  b03b == "Weakened the household income level"
replace b03b = "1" if  b03b == "low yields of crops leading to limited source of income"
replace b03b = "1" if  b03b == "The elephant uproot their crops from thr the garden hence affecting their income"
replace b03b = "1" if  b03b == "there was low yield which led to low sells hence low income"
replace b03b = "3" if  b03b == "organising for funeral service and feeding"
replace b03b = "6" if  b03b == "my house was broken down as a result of this and destroying all i had in the shop."
replace b03b = "5" if  b03b == "reduced income inflow in the household"
replace b03b = "4" if  b03b == "had little time to do business"
replace b03b = "1" if  b03b == "nothing sell"
replace b03b = "3" if  b03b == "increased demand for money beyond household capacity"
replace b03b = "5" if  b03b == "Her peanuts from which she used to sale and get money never made it to a good harvest hence affecting her income."
replace b03b = "5" if  b03b == "REDUCED INCOME EXPECTATIONS"
replace b03b = "5" if  b03b == "REDUCED ON THE INCOME IN THE FAMILY SINCE CROPS WERE DRIED UP IN THE GARDEN"
replace b03b = "3" if  b03b == "taking the patient to the hospital and paying bills"
replace b03b = "6" if  b03b == "used property"
replace b03b = "1" if  b03b == "little harvest"
replace b03b = "1" if  b03b == "little harvest led to low income"
replace b03b = "1" if  b03b == "there was no sell of crops due to no harvest of crops hence no  income"
replace b03b = "1" if  b03b == "low ouput led to low sells of crops hence low income"
replace b03b = "6" if  b03b == "saved money all got burnt"
replace b03b = "5" if  b03b == "lowered household income"
replace b03b = "5" if  b03b == "reduced income, lowered sales"
replace b03b = "3" if  b03b == "funeral services took money from the family"
replace b03b = "4" if  b03b == "The time he would have been doing economic work he used to spend it attending the mourners."
replace b03b = "5" if  b03b == "He spent money treating the livestock and they still died hence lowering his income."
replace b03b = "5" if  b03b == "reduced, nothing to sell and earn from"
replace b03b = "5" if  b03b == "lost husband who could look for money"
replace b03b = "3" if  b03b == "spend alot of time on weeding which could been spend on bussiness"
replace b03b = "1" if  b03b == "no harvest to sell"
replace b03b = "1" if  b03b == "had no food items to sell"
replace b03b = "4" if  b03b == "was so weak to work in the gardens to plant even cash crops"
replace b03b = "1" if  b03b == "As a result of this cash crops were spoilt and i had nothing to sell."
replace b03b = "3" if  b03b == "we had to spend money to buy household items afresh"
replace b03b = "4" if  b03b == "with swollen legs, i couldn't contribute much in diging yet its our main source of income"
replace b03b = "1" if  b03b == "crops were destroyed and i had nothing to sell to get money."
replace b03b = "1" if  b03b == "always had very little harvest and cant sell the little to raise money"
replace b03b = "3" if  b03b == "spent alot in buying pesticides"
replace b03b = "4" if  b03b == "didnt have enough  energy to participate in agricultural activities to raise money for the family"
replace b03b = "4" if  b03b == "I was not able to work for money because i was weak."
replace b03b = "6" if  b03b == "They lost their cash in the burnt house."
replace b03b = "5" if  b03b == "They lost their beans in the garden and had nothing to sale earn money."
replace b03b = "3" if  b03b == "spent alot in the hospital"
replace b03b = "5" if  b03b == "lowered household income"
replace b03b = "3" if  b03b == "rsduced income, spent for burial arrangements"
replace b03b = "3" if  b03b == "funeral services"
replace b03b = "4" if  b03b == "time spend mourning reduce her ability to do bussines"
replace b03b = "1" if  b03b == "there is no produce to sell"
replace b03b = "1" if  b03b == "low harvest reduced household income"
replace b03b = "1" if  b03b == "had crop loss"
replace b03b = "1" if  b03b == "Destroy all the crops that we can not get income out of it"
replace b03b = "3" if  b03b == "spend most cash on treatment and burials"
replace b03b = "1" if  b03b == "little produce for sale"
replace b03b = "3" if  b03b == "spent all income on burial"
replace b03b = "3" if  b03b == "spent money on pesticides"
replace b03b = "1" if  b03b == "crop failure h3nce nothing tonsell"
replace b03b = "1" if  b03b == "low farm output led to low sell and income"
replace b03b = "3" if  b03b == "I spent a lot in the hospital"
replace b03b = "4" if  b03b == "could not do income generating work"
replace b03b = "1" if  b03b == "crops were destroyed by rain and you can't  get what to sell to get money."
replace b03b = "1" if  b03b == "crops failed and there was nothing to sale and get money hence affecting her income."
replace b03b = "5" if  b03b == "left the bussiness"
replace b03b = "1" if  b03b == "low income due to low harvest of crops"
replace b03b = "5" if  b03b == "we were unable to raise moneys from sale of our agricultural products"
replace b03b = "3" if  b03b == "spent money on medication"
replace b03b = "3" if  b03b == "affected our means of getting money for hospital bills"
replace b03b = "3" if  b03b == "used her savings"
replace b03b = "3" if  b03b == "spend alot on hospital care"
replace b03b = "5" if  b03b == "reduced household income"
replace b03b = "3" if  b03b == "wasted money for digging"
replace b03b = "1" if  b03b == "low crop yield reduced household income"
replace b03b = "5" if  b03b == "reduced income"
replace b03b = "5" if  b03b == "REDUCED ON THE INCOME"
replace b03b = "4" if  b03b == "I have to sell crop  to get income, but you can't find what to sell because i didn't dig due to."
replace b03b = "4" if  b03b == "Was in the hospital and i could not work for money"
replace b03b = "5" if  b03b == "It affected in a way that the money that was invested was now gone hence affecting the income."
replace b03b = "5" if  b03b == "REDUCED ON THE LEVEL OF INCOME"
replace b03b = "3" if  b03b == "lost income for teatment and burial"
replace b03b = "1" if  b03b == "had very low yields"
replace b03b = "3" if  b03b == "spent money to by pesticides"
replace b03b = "1" if  b03b == "It made them lose their crops they would have planted in the next in the fire."
replace b03b = "3" if  b03b == "paying hospital bills and feeding"
replace b03b = "1" if  b03b == "affected the quantity of produce after the harvest."
replace b03b = "1" if  b03b == "reduced on the level farming.so nothing i sell to get money"
replace b03b = "1" if  b03b == "sold food items to clear hospital bills"
replace b03b = "1" if  b03b == "very low sale of agricultural product which is household source of income"
replace b03b = "1" if  b03b == "could not sell few yields"
replace b03b = "1" if  b03b == "reduced income since it was a family member"
replace b03b = "3" if  b03b == "USED MONEY TO FEED MOUNERS"
replace b03b = "5" if  b03b == "LOST OF INCOME"
replace b03b = "1" if  b03b == "plant was destroyed due too much sunshine  leaving nothing to sell"
replace b03b = "1" if  b03b == "the was poor havest"
replace b03b = "3" if  b03b == "they spent a lot of money in treatment and wasted their time for doing farming"
replace b03b = "3" if  b03b == "low savings due to low crop production"
replace b03b = "1" if  b03b == "crops were all lossed"
replace b03b = "1" if  b03b == "low food production led to low sells hence low income"
replace b03b = "3" if  b03b == "high expense on medical"
replace b03b = "3" if  b03b == "Increased Difficulties in attaining income"
replace b03b = "3" if  b03b == "A lot of money was wasted for burial."

#delimit ;
label define bo3b
1 "Crop Loss"
2 "Increased Labour"
3 "Increased Expenditure"
4 "Reduced energy to work"
5 "Reduced Income"
6 "Loss of properties"
;
#delimit cr

destring b03b,replace
la values b03b bo3b

replace b04b = "1" if  b04b == "sold bicycle"
replace b04b = "1" if  b04b == "sold assets e.g. saucepans"
replace b04b = "2" if  b04b == "sold land"
replace b04b = "1" if  b04b == "sold chairs, bicycle"
replace b04b = "3" if  b04b == "sold animal"
replace b04b = "1" if  b04b == "Her assets got burnt in the fire."
replace b04b = "1" if  b04b == "sold a radio to buy food"
replace b04b = "1" if  b04b == "sold assets  to bail him out"
replace b04b = "1" if  b04b == "sold bycecle to fund court issue"
replace b04b = "1" if  b04b == "sold asset e.g radio and bicycle"
replace b04b = "1" if  b04b == "asset were sold to fund hospital bill"
replace b04b = "1" if  b04b == "household assets like chairs and others got burnt"
replace b04b = "1" if  b04b == "They lost everything in the fire."
replace b04b = "1" if  b04b == "Nothing in the house survived."
replace b04b = "1" if  b04b == "She sold her garment."
replace b04b = "1" if  b04b == "house was destroyed by floods"
replace b04b = "1" if  b04b == "Sold assets e.g. bicycle"
replace b04b = "1" if  b04b == "sold tables to raise money to cope up with the shock"
replace b04b = "1" if  b04b == "sold solar panel to raise money"
replace b04b = "1" if  b04b == "Sold off some asset e.g chairs"
replace b04b = "1" if  b04b == "Sold assets e.g. solar pannel"
replace b04b = "1" if  b04b == "They sold some assets to help them get some money to keep moving on with life."
replace b04b = "1" if  b04b == "Like chairs was broken because it being misused by drunkard."
replace b04b = "1" if  b04b == "He sold his radio to get some money to sort his need."
replace b04b = "1" if  b04b == "He sold his saucepan to buy simsim."
replace b04b = "4" if  b04b == "I borrowed money for medical bill and later failed to pay back and my assets sold by force to cover it."
replace b04b = "1" if  b04b == "he sold his accumulator"
replace b04b = "1" if  b04b == "assets were burnt insidethe house"
replace b04b = "1" if  b04b == "She sold some of her assets in the house like chairs."
replace b04b = "1" if  b04b == "They were all burnt."
replace b04b = "1" if  b04b == "sold land to support family"
replace b04b = "1" if  b04b == "sold some assets"
replace b04b = "1" if  b04b == "sold assets to buy food e.g. bicycle"
replace b04b = "1" if  b04b == "Sold assets e.g. solar pannel"
replace b04b = "1" if  b04b == "She sold a house ."
replace b04b = "1" if  b04b == "sold assets to raise income  for health"
replace b04b = "1" if  b04b == "used assets during fineral"
replace b04b = "1" if  b04b == "all hpusehold assets got burnt"
replace b04b = "5" if  b04b == "house got spoilt and could not be repaid"
replace b04b = "1" if  b04b == "some of the assets got burnt in the house"
replace b04b = "1" if  b04b == "sold our assets especially the livestocks to cater for hospital bills"
replace b04b = "1" if  b04b == "Their assets like plates, saucepans, cups and many other things burnt in .the fire"
replace b04b = "1" if  b04b == "They sold what in the house to keep surviving."
replace b04b = "1" if  b04b == "sold assets"
replace b04b = "2" if  b04b == "sold part of land"
replace b04b = "6" if  b04b == "poor pasture for livestock, sold livesto k"
replace b04b = "3" if  b04b == "sold animal"
replace b04b = "1" if  b04b == "sold her clothings and livestock"
replace b04b = "1" if  b04b == "we sold offer our assets to replace stolen ones"
replace b04b = "1" if  b04b == "had to sell assets"
replace b04b = "1" if  b04b == "sold assets to raise money"
replace b04b = "1" if  b04b == "sold off assets at a cheaper price"
replace b04b = "1" if  b04b == "I was forced to sell assets eg chairs to get money."
replace b04b = "1" if  b04b == "It also made her lose her clothes and house utensils."
replace b04b = "1" if  b04b == "sold her big saucepan to get some money to fix some of the problem."
replace b04b = "1" if  b04b == "I was forced to sell others due to hardship."
replace b04b = "1" if  b04b == "we sold off our assets in trying to recover"
replace b04b = "1" if  b04b == "sold bycle"
replace b04b = "1" if  b04b == "sold household items"

#delimit ;
label define bo4b
1 "Sold or lost household assets"
2 "Sold Land"
3 "Sold Livestock"
4 "Borrowed Money"
5 "Main household home was destroyed"
6 "Pasture was destroyed"
;
#delimit cr

destring b04b,replace
la values b04b bo4b


replace b05b = "1" if  b05b == "lower harvest of simsim, groundnut and peageon peas"
replace b05b = "1" if  b05b == "had very poor harvest"
replace b05b = "2" if  b05b == "reduced on the diversity of food in the household"
replace b05b = "1" if  b05b == "there was low food availability due to low yield"
replace b05b = "3" if  b05b == "more work load"
replace b05b = "4" if  b05b == "Due to the increment of numbers at home, i had to cook more than the usual and this left us with no food."
replace b05b = "1" if  b05b == "Since food crops were destroyed by this, getting food was hard."
replace b05b = "1" if  b05b == "littlw food"
replace b05b = "1" if  b05b == "little food"
replace b05b = "3" if  b05b == "His crops had no one to take care of it hence it never did well."
replace b05b = "3" if  b05b == "dueto sickness i didn't have potential to weed my food crops in the garden"
replace b05b = "1" if  b05b == "Crops grew and the sun killed them hence leaving them without enough food."
replace b05b = "1" if  b05b == "reduced food availability, sold groundnuts"
replace b05b = "5" if  b05b == "moving far away using walking stick to look for food is not reliable making food not available in the house all the time"
replace b05b = "1" if  b05b == "food crops especially semsame dried out"
replace b05b = "1" if  b05b == "sold sesame to buy other food items since production was low from the field destroyed by monkeys"
replace b05b = "5" if  b05b == "sold food items (g-nuts)"
replace b05b = "5" if  b05b == "LIMITED  FOOD FOR THE HOUSEHOLD MEMBERS"
replace b05b = "1" if  b05b == "sickness made us not harvest all crops from the garden like groundnuts"
replace b05b = "5" if  b05b == "reduced food availability"
replace b05b = "5" if  b05b == "She was sick and was not able to support his family members in  growing food and that affected availability of food."
replace b05b = "1" if  b05b == "lower harvest for consumption"
replace b05b = "1" if  b05b == "less time farming"
replace b05b = "1" if  b05b == "The crops they used to survive on did not do due to extreme heat from the sun and no rainfall."
replace b05b = "6" if  b05b == "frequent time in hospital less time farming"
replace b05b = "5" if  b05b == "The food crops she had stored in the house got burnt hence affecting her food availability."
replace b05b = "1" if  b05b == "cassava and peagon peas were killed by flood"
replace b05b = "5" if  b05b == "used food"
replace b05b = "6" if  b05b == "we were forced to sell food we had in house to cater for this."
replace b05b = "5" if  b05b == "used food items"
replace b05b = "5" if  b05b == "food crops were destroyed and it was difficult to find what to cook."
replace b05b = "4" if  b05b == "alot of stored  food stuff  was cooked during the funeral than what was in the budget. i now run short of food stuffs  in the house"
replace b05b = "4" if  b05b == "food consumption when higher due to the increment of numbers people  at home."
replace b05b = "3" if  b05b == "Never been able to do all the necessary agronomic practices so harvest was totally low"
replace b05b = "5" if  b05b == "less than  required  food was available"
replace b05b = "3" if  b05b == "only person  to source  food  was down"
replace b05b = "5" if  b05b == "LIMITED FOOD FOR THE FAMILY SINCE MOST CROPS WERE DESTROYED BY DOMESTIC ANIMALS"
replace b05b = "2" if  b05b == "reduced on the diversity of food"
replace b05b = "1" if  b05b == "had little  harvest"
replace b05b = "5" if  b05b == "limited food for the household"
replace b05b = "5" if  b05b == "little food due to low harvest"
replace b05b = "1" if  b05b == "little food due to low harvest because of drought which affected crops"
replace b05b = "5" if  b05b == "low harvest led to little food at home"
replace b05b = "2" if  b05b == "reduced on da diversity of food in the household"
replace b05b = "7" if  b05b == "limited land for farming"
replace b05b = "1" if  b05b == "had very little food crop harvest"
replace b05b = "1" if  b05b == "the yield was low hence low availability"
replace b05b = "." if  b05b == "none"
replace b05b = "5" if  b05b == "low harvest led to little food"
replace b05b = "1" if  b05b == "reduced production"
replace b05b = "5" if  b05b == "low yield led to little food at home"
replace b05b = "5" if  b05b == "there was no food, so borrowing was the only option"
replace b05b = "5" if  b05b == "low yield of crops led to little food"
replace b05b = "1" if  b05b == "Reduced farm productivity"
replace b05b = "5" if  b05b == "low harvest led to little food"
replace b05b = "5" if  b05b == "little food"
replace b05b = "1" if  b05b == "food crops were spoilt from the garden."
replace b05b = "3" if  b05b == "Limited time for farm work"
replace b05b = "5" if  b05b == "I was not able to do any work to provide food in the house."
replace b05b = "7" if  b05b == "I had no where plant food crops and affects the present of food in the house."
replace b05b = "1" if  b05b == "little harvest"
replace b05b = "8" if  b05b == "crops items were sold to cope up with the shock"
replace b05b = "5" if  b05b == "little harvest led to little food at home"
replace b05b = "8" if  b05b == "SOLD SOME FOOD ITEMS TO COPE UP WITH THE SHOCK"
replace b05b = "1" if  b05b == "very little food harvest was attained"
replace b05b = "2" if  b05b == "limited diversity of food"
replace b05b = "5" if  b05b == "there was little food because of low harvest"
replace b05b = "5" if  b05b == "Harvested less, reduced food availability"
replace b05b = "9" if  b05b == "spend time in hospital without farming"
replace b05b = "1" if  b05b == "low harvest"
replace b05b = "5" if  b05b == "food items in the house got burnt"
replace b05b = "1" if  b05b == "few crop output were harvested"
replace b05b = "7" if  b05b == "sold millet to get money for treatment hence reduced availability"
replace b05b = "5" if  b05b == "due to crops infection, little was harvested for consumption"
replace b05b = "1" if  b05b == "our food crops dried up before maturity"
replace b05b = "5" if  b05b == "little harvest led to little food"
replace b05b = "5" if  b05b == "Their foodstuffs got burnt also."
replace b05b = "5" if  b05b == "food crops dried and this led to inadequate food in the house"
replace b05b = "8" if  b05b == "sold away food stocks"
replace b05b = "8" if  b05b == "sold food items eg beans"
replace b05b = "7" if  b05b == "cultivation was affected. couldn't plant enough"
replace b05b = "5" if  b05b == "food was less than the  demaned quantity"
replace b05b = "5" if  b05b == "low harvest led to little food"
replace b05b = "5" if  b05b == "little harvest led to little food"
replace b05b = "5" if  b05b == "Even food was also burnt in the house by the fire."
replace b05b = "5" if  b05b == "They used  to have several meals but these days they normally  eat once."
replace b05b = "8" if  b05b == "I sold everything in house and it was really difficult for me get food."
replace b05b = "2" if  b05b == "limited diversity of food due to low yield"
replace b05b = "5" if  b05b == "Food crops were destroyed and it becomes difficult to find out what cook at times."
replace b05b = "9" if  b05b == "I was weak and couldn't dig or plant food to sustain my family."
replace b05b = "5" if  b05b == "low yield hence food scarcity"
replace b05b = "5" if  b05b == "food crops got wilted and did not perform well hence food scarcity"
replace b05b = "5" if  b05b == "there was no food in the household"
replace b05b = "5" if  b05b == "little harvest led to little food"
replace b05b = "5" if  b05b == "Food crop harvest was low; family doesn't have enough food in storage"
replace b05b = "5" if  b05b == "low harvest led to little food in an household"
replace b05b = "8" if  b05b == "sold food in storage"
replace b05b = "5" if  b05b == "low harvest led to little food"
replace b05b = "1" if  b05b == "Food crop harvest was affected"
replace b05b = "1" if  b05b == "Food crop harvest was poor"
replace b05b = "8" if  b05b == "They sold a goat to get money for treatment that they may have had some part for  food."
replace b05b = "8" if  b05b == "sold beans"
replace b05b = "8" if  b05b == "Sold food stocks and could not attend fully to the garden"
replace b05b = "4" if  b05b == "Cooked most of the food during the burial"
replace b05b = "1" if  b05b == "The crops yield was lowered due to extrem sunshine."
replace b05b = "2" if  b05b == "low diversity of food for the family"
replace b05b = "5" if  b05b == "low yied led to little food"
replace b05b = "5" if  b05b == "The husband  was the main food gather and his death left a big gap in food availability in her home."
replace b05b = "8" if  b05b == "sold food items"
replace b05b = "1" if  b05b == "It affected present of food because I didn't even plant enough food crops that year."
replace b05b = "8" if  b05b == "spld some food to cope up with the shock"
replace b05b = "8" if  b05b == "sold food items stored"
replace b05b = "2" if  b05b == "limited diversity of food for the household"
replace b05b = "2" if  b05b == "low diversity of food in the household"
replace b05b = "5" if  b05b == "low yield led to low food"
replace b05b = "2" if  b05b == "low diversity of food for the family"
replace b05b = "2" if  b05b == "little harvest led to led to little food"
replace b05b = "5" if  b05b == "low yield of crops led to little food"
replace b05b = "5" if  b05b == "low yield led to limited food at home"
replace b05b = "5" if  b05b == "little food due to stunting of the crops"
replace b05b = "8" if  b05b == "sold maize and cassava"
replace b05b = "5" if  b05b == "Food was less since they dried out"
replace b05b = "8" if  b05b == "sold beans"
replace b05b = "5" if  b05b == "Food crop harvest was less than required"
replace b05b = "4" if  b05b == "limited food in for the family since alot was spent on taking care of mouners"
replace b05b = "3" if  b05b == "Labour for food crop cultivation was affected"
replace b05b = "8" if  b05b == "sold food stuffs and couldn't dig for food"
replace b05b = "1" if  b05b == "harvested little food from the garden"
replace b05b = "5" if  b05b == "most of the food crops got destroyed in the garden hence availability of food became low"
replace b05b = "1" if  b05b == "Had poor yield ; never had time and labour to weed"
replace b05b = "8" if  b05b == "Food in storage were sold"
replace b05b = "5" if  b05b == "Low productivity, hence less food in the household"
replace b05b = "5" if  b05b == "They did not have enough to eat well as usual."
replace b05b = "1" if  b05b == "I had to more than the usual and at the end i had nothing."
replace b05b = "1" if  b05b == "The sun destroyed almost all their crops in the garden hence leaving them with little to eat."
replace b05b = "1" if  b05b == "There was alot of difficult in feeding the house since what was to help in thatfailed"
replace b05b = "3" if  b05b == "I was weak and couldn't plant food crops and this affect the present 0f food in the house."
replace b05b = "5" if  b05b == "The way they used to eat was affected badly."
replace b05b = "5" if  b05b == "Food crops were destroyed and it becomes difficult to find out what to eat."
replace b05b = "8" if  b05b == "I had t to sell food crops  for this also."
replace b05b = "5" if  b05b == "He was not  able to get another  foodstuff  since  the on he planted  failed due to the sun's effect."
replace b05b = "3" if  b05b == "Doctor told  me not to do any hard work and u know if you don't work you have nothing to eat."
replace b05b = "3" if  b05b == "Didn't weed her grains"
replace b05b = "5" if  b05b == "low harvest led to little food at home"
replace b05b = "8" if  b05b == "I had to sell food crops and remained with little in the house."
replace b05b = "2" if  b05b == "limited diversity of food"
replace b05b = "2" if  b05b == "low diversity of food in the household since alot of time was spent in the hospital and limited crops were grown"
replace b05b = "1" if  b05b == "The  excess  rainfall made their sweet potatoes  to rot and there was less left to eat"
replace b05b = "5" if  b05b == "little harvest led to little food"
replace b05b = "1" if  b05b == "Had very low harvest in both seasons"
replace b05b = "1" if  b05b == "reduced productivity of food for the household"
replace b05b = "4" if  b05b == "Money for food was affected"
replace b05b = "3" if  b05b == "it caused weakness reducing production of food"
replace b05b = "5" if  b05b == "it led to foodscarcity since little was harvested"
replace b05b = "8" if  b05b == "could not concentrate in agriculture and selling of fod items"
replace b05b = "5" if  b05b == "food crops are always destroyed leaving us limited food ."
replace b05b = "5" if  b05b == "low harvest little food"
replace b05b = "5" if  b05b == "little was harvested leading to low food available in the house"
replace b05b = "8" if  b05b == "reduced household food capacity and sold the little remainding"
replace b05b = "1" if  b05b == "food harvested was little"
replace b05b = "5" if  b05b == "less harvested crop hence less food"
replace b05b = "5" if  b05b == "there was little food in the household"
replace b05b = "8" if  b05b == "sold away food stocks"
replace b05b = "5" if  b05b == "foods were burnt in the house"
replace b05b = "5" if  b05b == "no harvest of crop led to limited food"
replace b05b = "5" if  b05b == "liw harvest of crops led to limited food at home"
replace b05b = "4" if  b05b == "She had to look for food elsewhere."
replace b05b = "5" if  b05b == "Everything was burnt and all the food."
replace b05b = "5" if  b05b == "Less food was available due to very poor harvest"
replace b05b = "2" if  b05b == "low diversity of food for the family"
replace b05b = "5" if  b05b == "little harvest led to little food"
replace b05b = "5" if  b05b == "reduced food at home"
replace b05b = "5" if  b05b == "The crops failed and it led to hunger in the area."
replace b05b = "4" if  b05b == "I also had to cook more than the usual."
replace b05b = "8" if  b05b == "I was forced to sell food in  house and remain with nothing."
replace b05b = "3" if  b05b == "There was no one to help in food gathering."
replace b05b = "5" if  b05b == "The elephants destroyed there crops and they were left with little to eat."
replace b05b = "5" if  b05b == "Wild animals always affect food crop from the garden and it became hard to get what to cook at times."
replace b05b = "8" if  b05b == "The goat that would have been eaten was sold to get moneyfor treatment."
replace b05b = "1" if  b05b == "it always affect our food crops from the garden."
replace b05b = "7" if  b05b == "crop field size was reduced"
replace b05b = "9" if  b05b == "labour was reduced hence decline in food production"
replace b05b = "5" if  b05b == "had little food in storage"
replace b05b = "3" if  b05b == "Couldn't cultivate enough"
replace b05b = "5" if  b05b == "low yield led to little food"
replace b05b = "5" if  b05b == "had less food afterwards"
replace b05b = "5" if  b05b == "destroyed all maize hence low food availability"
replace b05b = "6" if  b05b == "money meant to buy food was used for treatment"
replace b05b = "5" if  b05b == "limited food for the family"
replace b05b = "2" if  b05b == "reduced food diversity"
replace b05b = "5" if  b05b == "harvest reduced and so food availability"
replace b05b = "5" if  b05b == "limited food for the family since alot of crops were destroyed"
replace b05b = "5" if  b05b == "Elephants destroyed their  crops that  they  would have eaten  to survive."
replace b05b = "5" if  b05b == "limited food for the household since most food are destroyed by elephants"
replace b05b = "1" if  b05b == "food crops always affected too."
replace b05b = "5" if  b05b == "destroyed crops by eating and stumpling causing food insecurity"
replace b05b = "5" if  b05b == "Hunger due to food stuffs which dried out"
replace b05b = "5" if  b05b == "little stored due to low harvest"
replace b05b = "3" if  b05b == "She never grew crops as she did in the past hence lowering food availability  in the  house."
replace b05b = "5" if  b05b == "reduced food for the family since 2little crop was caltivated"
replace b05b = "3" if  b05b == "farm labour on food crops was grately affected"
replace b05b = "5" if  b05b == "If crops are destroyed you have nothing to sometimes to cook."
replace b05b = "8" if  b05b == "sold food items to get money"
replace b05b = "5" if  b05b == "food production is low and this led to low quantity of food in the house"
replace b05b = "4" if  b05b == "saved food was spent on feeding mourners"
replace b05b = "8" if  b05b == "She sold her crops to get money for treatment."
replace b05b = "5" if  b05b == "little food due to low harvest"
replace b05b = "5" if  b05b == "low harvest led to little food"
replace b05b = "5" if  b05b == "They used the food they had and remained with almost not enough to eat."
replace b05b = "5" if  b05b == "limited food for the household"
replace b05b = "5" if  b05b == "Had less food in stock"
replace b05b = "8" if  b05b == "I sold the food i had in the house to cater for these."
replace b05b = "6" if  b05b == "aome food were sold to raise money for treatment"
replace b05b = "8" if  b05b == "sold food stocks like rice"
replace b05b = "8" if  b05b == "some food was sold to cope up with the shock"
replace b05b = "5" if  b05b == "They elephant spoilt their crops and left them with little food."
replace b05b = "5" if  b05b == "low yield led to little food at home"
replace b05b = "8" if  b05b == "sold rice and used food stored to feed mourners"
replace b05b = "5" if  b05b == "Crops were destroyed and it became hard to find what to cook."
replace b05b = "5" if  b05b == "food cropd dried up causing hunger"
replace b05b = "9" if  b05b == "Household labour on raising food was affected"
replace b05b = "5" if  b05b == "little food"
replace b05b = "9" if  b05b == "lessened  household farm labour"
replace b05b = "5" if  b05b == "She did not have enough to eat since what she planted failed."
replace b05b = "2" if  b05b == "REDUCED FOOD DIVERSITY"
replace b05b = "2" if  b05b == "REDUCED THE DIVERSITY OF FOOD"
replace b05b = "8" if  b05b == "sold beans to raise some money"
replace b05b = "8" if  b05b == "used available food"
replace b05b = "5" if  b05b == "little harvest"
replace b05b = "5" if  b05b == "no harvest led to limited food at home"
replace b05b = "5" if  b05b == "little harvest because of drought led to little food at home"
replace b05b = "5" if  b05b == "food in the house also got burnt"
replace b05b = "5" if  b05b == "reduced household food availability"
replace b05b = "8" if  b05b == "sold food items, beans especially"
replace b05b = "8" if  b05b == "sold groundnut and maize"
replace b05b = "4" if  b05b == "They used the food they had to take care of the mourners."
replace b05b = "5" if  b05b == "The death of the livestock made them lose money that they would have got after selling to the goats and invested in farming to help improve food availability."
replace b05b = "8" if  b05b == "sold household food items"
replace b05b = "7" if  b05b == "reduce areas of farming"
replace b05b = "1" if  b05b == "reduce yield"
replace b05b = "5" if  b05b == "had less food than required"
replace b05b = "5" if  b05b == "Had hardship in attaining food"
replace b05b = "5" if  b05b == "has interfered whith our commitment to produce food in large quantities"
replace b05b = "5" if  b05b == "food crops were also destroyed by and sometimes we had limited food."
replace b05b = "6" if  b05b == "money to buy with food again was spent in buying assets"
replace b05b = "3" if  b05b == "responsibility was left on the husband to dig resulted to inadequate food in the house"
replace b05b = "5" if  b05b == "food crops were also destroyed by this and it became hard to get what to cook."
replace b05b = "5" if  b05b == "have had inadequate harvest of food crops constantly for 3 years"
replace b05b = "1" if  b05b == "food crops were destroyed  by pest and diseases"
replace b05b = "8" if  b05b == "We sold food stuffs to raise money"
replace b05b = "5" if  b05b == "Foodstuffs got burnt."
replace b05b = "5" if  b05b == "They lost their beans and did not have enough legumes to survive on."
replace b05b = "8" if  b05b == "sold household food items"
replace b05b = "8" if  b05b == "sole household food items"
replace b05b = "8" if  b05b == "sold maize meant for feeding"
replace b05b = "8" if  b05b == "sold two sacs of simsim and other food items"
replace b05b = "1" if  b05b == "crops dried up and even water dried in the well"
replace b05b = "5" if  b05b == "had less food for the year"
replace b05b = "5" if  b05b == "Reduced on the amount of food in the household"
replace b05b = "1" if  b05b == "their was very poor harvest"
replace b05b = "1" if  b05b == "REDUCED ON THE DIVERSITY OF FOOD"
replace b05b = "2" if  b05b == "most food was used during burial"
replace b05b = "1" if  b05b == "littlr harvest"
replace b05b = "3" if  b05b == "spend on feeding people at burial"
replace b05b = "1" if  b05b == "low farm output led to low harvest hence little food"
replace b05b = "1" if  b05b == "little harvest"
replace b05b = "5" if  b05b == "low harvest led to little food in household"
replace b05b = "1" if  b05b == "I wasted a lot of food as a result of this."
replace b05b = "9" if  b05b == "were not able to do farming"
replace b05b = "5" if  b05b == "food crops were destroyed leaving nothing to bring home."
replace b05b = "5" if  b05b == "She did not have prodoce to sale and buy food since they died inthe garden."
replace b05b = "7" if  b05b == "accesing land for digging became hard"
replace b05b = "1" if  b05b == "little food due low harvest"
replace b05b = "1" if  b05b == "resulted into a very low harvest"
replace b05b = "4" if  b05b == "used for feeding people and sold others"
replace b05b = "8" if  b05b == "sold food items to raise money for treatment"
replace b05b = "5" if  b05b == "Less household food availability"
replace b05b = "1" if  b05b == "crops i.e maize and gnuts were stunted"
replace b05b = "5" if  b05b == "food items were less in the household"
replace b05b = "2" if  b05b == "REDUCED ON THE VARIETY OF FOOD"
replace b05b = "8" if  b05b == "I alway have sell the small food in the house"
replace b05b = "8" if  b05b == "you have to sell food in the house to pay medical bill."
replace b05b = "5" if  b05b == "limited food"
replace b05b = "8" if  b05b == "sold food from household"
replace b05b = "5" if  b05b == "Didn't have enough food"
replace b05b = "5" if  b05b == "there was low yield of crops hence little food"
replace b05b = "5" if  b05b == "She lost five bags of rice and two bags of beans in the fire."
replace b05b = "8" if  b05b == "sold sesame"
replace b05b = "5" if  b05b == "it affected the rate of food consumption in a day."
replace b05b = "3" if  b05b == "digging became hard because i was left alone with seven young kids. so food was a problem to get"
replace b05b = "8" if  b05b == "sold some food items"
replace b05b = "5" if  b05b == "food crops dried in the field with little harvest for consumption"
replace b05b = "1" if  b05b == "crops yield were low"
replace b05b = "8" if  b05b == "sold maize"
replace b05b = "8" if  b05b == "SOLD MAIZE"
replace b05b = "2" if  b05b == "less variety of foods"
replace b05b = "1" if  b05b == "food go destroyed from the garden"
replace b05b = "1" if  b05b == "plant was dried from the garden"
replace b05b = "8" if  b05b == "sold food items"
replace b05b = "1" if  b05b == "destroyed crops from the garden"
replace b05b = "1" if  b05b == "crops were lossed"
replace b05b = "1" if  b05b == "low food due to its low output from the garden due to drought"
replace b05b = "1" if  b05b == "level of crop production reduced"
replace b05b = "8" if  b05b == "had to sell the food item for treatment and other expenses"
replace b05b = "4" if  b05b == "We had to cook more than the usual sizes due to the increment of numbers at home"
destring b05b,replace

#delimit ;
label define bo5b
1 "Reduced, little or poor harvest"
2 "Reduced diversity of foods available"
3 "Increased farm labour"
4 "Increased food expenditure"
5 "It led to food insecurity"
6 "It increased non-food expenditure"
7 "Reduced arable land"
8 "Sold food to cope up"
9 "Reduced time available for farming"
;
#delimit cr

la values b05b bo5b

replace b06b = "1" if  b06b == "rampant spread of diseases especially in goat and fowls"
replace b06b = "2" if  b06b == "sold livestocks for food"
replace b06b = "2" if  b06b == "sold livestock to cope up with the shock"
replace b06b = "2" if  b06b == "sold goats"
replace b06b = "2" if  b06b == "slaughtered"
replace b06b = "3" if  b06b == "others were stolen because there were many people at home."
replace b06b = "1" if  b06b == "animal diseases"
replace b06b = "4" if  b06b == "There wasnt anybody to look after them as i was sick"
replace b06b = "1" if  b06b == "The animals became sick due the heat that was too much from the sun."
replace b06b = "2" if  b06b == "sold livestock e.g. pigs"
replace b06b = "2" if  b06b == "sold goats during treatment at the hospital"
replace b06b = "5" if  b06b == "thee was inadequate feeds for the livestocks"
replace b06b = "2" if  b06b == "SOLD LIVESTOCK TO BUY FOOD"
replace b06b = "2" if  b06b == "sold some goats"
replace b06b = "4" if  b06b == "She was not in good position to help tie the goats to feed."
replace b06b = "5" if  b06b == "limited water source and pastures"
replace b06b = "2" if  b06b == "sold livestock"
replace b06b = "2" if  b06b == "The animals grass and water deteriorated due to prolonged sunshine."
replace b06b = "2" if  b06b == "animal were sold to generate income"
replace b06b = "2" if  b06b == "sold animals"
replace b06b = "6" if  b06b == "Others were killed to feed the visitors who came."
replace b06b = "6" if  b06b == "slaughtered during fineral"
replace b06b = "." if  b06b == "si"
replace b06b = "6" if  b06b == "all the goats slaughtered at the funeral"
replace b06b = "6" if  b06b == "Very many of them was killed for food."
replace b06b = "2" if  b06b == "I sold my livestock to raise money for my hospital bills"
replace b06b = "5" if  b06b == "feeds had depleted"
replace b06b = "2" if  b06b == "sold livestock  to raise money for treatment"
replace b06b = "2" if  b06b == "sold livestock to cope up with life"
replace b06b = "2" if  b06b == "sold some livestock to cope up with da shok"
replace b06b = "5" if  b06b == "poor heath due to lack of enough water"
replace b06b = "5" if  b06b == "animal were denied areas for grazing"
replace b06b = "2" if  b06b == "sold goats to help in production"
replace b06b = "4" if  b06b == "Nobody was there to take care of them because we spent a lot of time in the hospital."
replace b06b = "2" if  b06b == "sold livestock to get money e.g. pigs"
replace b06b = "2" if  b06b == "Sold goats"
replace b06b = "1" if  b06b == "outbreak of animals diseases."
replace b06b = "7" if  b06b == "others were taken by force."
replace b06b = "2" if  b06b == "sold livestock to cope up with shock"
replace b06b = "2" if  b06b == "SOLD LIVESTOCK TO RAISE SOME MONEY FOR TREATMENT"
replace b06b = "4" if  b06b == "animal were left unattended to"
replace b06b = "2" if  b06b == "sold goats to help"
replace b06b = "5" if  b06b == "feeds and water became scarce"
replace b06b = "8" if  b06b == "goats and chicken died and numbers reduced"
replace b06b = "1" if  b06b == "livestock got infection and due to poor feeding and water scarcity"
replace b06b = "1" if  b06b == "livestock suffered from diarrhea which left may dead"
replace b06b = "5" if  b06b == "Their food got burnt."
replace b06b = "2" if  b06b == "sold livestock e.g. goats"
replace b06b = "2" if  b06b == "They sold goats to get money for treatment."
replace b06b = "2" if  b06b == "sold animals like goats"
replace b06b = "2" if  b06b == "she sold a goat as a result of crops failure."
replace b06b = "3" if  b06b == "I took longer in the hospital and some of them was stolen ."
replace b06b = "5" if  b06b == "they depreciated due to wilted pasture"
replace b06b = "6" if  b06b == "used livestocks for burial ceremonies"
replace b06b = "2" if  b06b == "A goat went in the process of looking for money."
replace b06b = "2" if  b06b == "sold 2 chicken and 1 goat"
replace b06b = "2" if  b06b == "sold animals e.g. goats"
replace b06b = "4" if  b06b == "There was no one to help in tying  the goats to feed."
replace b06b = "2" if  b06b == "sold livestock"
replace b06b = "4" if  b06b == "It was difficult to also get treatment my animals because i spent for myself."
replace b06b = "2" if  b06b == "sold some livestock to raise some money for hospital bills"
replace b06b = "2" if  b06b == "sold 2goats"
replace b06b = "2" if  b06b == "sold livestock to raise some money for food"
replace b06b = "2" if  b06b == "sold 1 goat to buy food"
replace b06b = "2" if  b06b == "Sold livestock for survival"
replace b06b = "2" if  b06b == "sold goats"
replace b06b = "2" if  b06b == "sold livestocks to generate income"
replace b06b = "2" if  b06b == "Sold livestocks to help on treatment"
replace b06b = "5" if  b06b == "Hunger attacked animals"
replace b06b = "5" if  b06b == "livestock depreciated due to insufficient feeds"
replace b06b = "." if  b06b == "Ther"
replace b06b = "1" if  b06b == "They was no enough money to treat the livestock since they depended on crops for sale."
replace b06b = "1" if  b06b == "The young one was affected especially chickens."
replace b06b = "4" if  b06b == "I was in the hospital and nobody was there to take care of them."
replace b06b = "2" if  b06b == "sold livestocks to raise money"
replace b06b = "2" if  b06b == "livestock was sold to cpe up with the shock"
replace b06b = "2" if  b06b == "livestock wassold to cope up with the shock"
replace b06b = "8" if  b06b == "it even killed four goats."
replace b06b = "1" if  b06b == "Animals were affected by pest and diseases"
replace b06b = "1" if  b06b == "there were infections of other animals"
replace b06b = "8" if  b06b == "Animals died"
replace b06b = "2" if  b06b == "sold goats"
replace b06b = "8" if  b06b == "1 goat died"
replace b06b = "2" if  b06b == "sold livestocks e.g. goats"
replace b06b = "1" if  b06b == "unhealthy growth due to poor feeding"
replace b06b = "2" if  b06b == "sold pigs and goats to help"
replace b06b = "2" if  b06b == "sold animals e.g. goats"
replace b06b = "2" if  b06b == "sold goats"
replace b06b = "2" if  b06b == "reduced livestocks, sold goats"
replace b06b = "5" if  b06b == "The livestock also didn't have enough to eat because some of them ate from what they ate"
replace b06b = "2" if  b06b == "sold livestock to cope up with the shock"
replace b06b = "5" if  b06b == "The livestock had little to eat."
replace b06b = "2" if  b06b == "Some were sold and killed to cater for this."
replace b06b = "2" if  b06b == "The goats were sold ."
replace b06b = "4" if  b06b == "made livestocks treatment a challenge"
replace b06b = "6" if  b06b == "livestock was slaughtered duri g burial hence reduction in thier numbers"
replace b06b = "2" if  b06b == "livestocks were sold to raise income"
replace b06b = "2" if  b06b == "sold some livestock to raise money"
replace b06b = "9" if  b06b == "Animals eaten up by other canivores"
replace b06b = "2" if  b06b == "Used up livestock e.g. goats for money and food"
replace b06b = "2" if  b06b == "Most of the animals were  sold."
replace b06b = "2" if  b06b == "She also sold a goat to help in the hospital  bills."
replace b06b = "5" if  b06b == "unhealthy growth due to poor feeding"
replace b06b = "2" if  b06b == "They sold the goats in the process."
replace b06b = "8" if  b06b == "some livestock died as result of drought"
replace b06b = "8" if  b06b == "others got lost ."
replace b06b = "2" if  b06b == "sold livestock to raise some money for treatment"
replace b06b = "2" if  b06b == "sold livestocks to finance farming"
replace b06b = "2" if  b06b == "sold livestock to help cope up with the shock"
replace b06b = "6" if  b06b == "slaughtered many goats"
replace b06b = "6" if  b06b == "It was killing the young birds and animals."
replace b06b = "6" if  b06b == "sold livestocks e.g chicken"
replace b06b = "2" if  b06b == "animals were being regularly sold off"
replace b06b = "2" if  b06b == "SOLD LIVESTOCK"
replace b06b = "2" if  b06b == "sol1d some goats"
replace b06b = "2" if  b06b == "sold 12 goats to buy food and other assets"
replace b06b = "2" if  b06b == "sold livestock e.g. goat"
replace b06b = "6" if  b06b == "killed for burial services"
replace b06b = "2" if  b06b == "They sold some livestock and also killed some to cater for the mouners."
replace b06b = "4" if  b06b == "it did because it made them lose capacity to invest more in the livestock."
replace b06b = "8" if  b06b == "sold livestock to help burrial"
replace b06b = "2" if  b06b == "Some animals died due to lack of  feeds because grasses were dry all over."
replace b06b = "2" if  b06b == "sold off livestock to raise money buy food from the market"
replace b06b = "8" if  b06b == "mortality rate is too high among the animals"
replace b06b = "2" if  b06b == "sold off goats cheaply in trying to recover"
replace b06b = "2" if  b06b == "They sold the livestock to get money instead."
replace b06b = "2" if  b06b == "sold animals for treatment"
replace b06b = "2" if  b06b == "sold livestock for paying school fees"
replace b06b = "6" if  b06b == "slaughtered livestock, goats"
replace b06b = "2" if  b06b == "sold some livestock and also killed some"
replace b06b = "2" if  b06b == "sold the livestocks so as to buy food"
replace b06b = "2" if  b06b == "sold livestock to buy food"
replace b06b = "2" if  b06b == "sold the animals to raise money"
replace b06b = "6" if  b06b == "goats were killed hence numbers reduced"
replace b06b = "5" if  b06b == "poor growth"
replace b06b = "5" if  b06b == "water from the pond dried up for the animals to drink"
replace b06b = "6" if  b06b == "very many of them was killed"
replace b06b = "8" if  b06b == "some young animals died due to much rain."
replace b06b = "2" if  b06b == "sold livestock"
replace b06b = "5" if  b06b == "They lost weight due to poor feeding"
replace b06b = "3" if  b06b == "we lost alot of livestocks through theft"
replace b06b = "6" if  b06b == "killed goats to help in activities like funeral service"
replace b06b = "5" if  b06b == "few water sources and feeds"
replace b06b = "8" if  b06b == "animal's died"
replace b06b = "2" if  b06b == "SOLD COWS"
replace b06b = "8" if  b06b == "It became hard buy medicines for them and they died all."
replace b06b = "4" if  b06b == "others was stollen because i was not at home to look after them."
replace b06b = "2" if  b06b == "sold goats for burial"
replace b06b = "2" if  b06b == "They sold four goats in order to pay their children in school since they had lost their crops."
replace b06b = "2" if  b06b == "sold 6 goats"
replace b06b = "3" if  b06b == "animal eg goats was stollen because my home became exposed"
replace b06b = "5" if  b06b == "livestock lacked water to drink"
replace b06b = "1" if  b06b == "livestock disease were rampant"
replace b06b = "2" if  b06b == "sold goat to raise money"
replace b06b = "6" if  b06b == "SLAUGHTER A GOAT TO FEED THE MOURNERS"
replace b06b = "2" if  b06b == "SOLD GOATS"
replace b06b = "5" if  b06b == "grasses got dried. no where to take animals eat"
replace b06b = "2" if  b06b == "sold 3 goats"
replace b06b = "5" if  b06b == "not healthy due to little feeding"
replace b06b = "2" if  b06b == "sold my livestock"
replace b06b = "6" if  b06b == "had sell livestocks to support during burial services"

destring b06b,replace

#delimit ;
label define bo6b
1 "Increased incedences of livestock diseases"
2 "Sold livestock for food"
3 "Livestock were stolen"
4 "Reduced labour to care for livestock"
5 "Reduced livestock feeds"
6 "Most livestocks were used to feed visitors"
7 "Livestock were taken by force"
8 "Some livestock died"
9 "Some livestock were eaten by wild animals"
;
#delimit cr

la values b06b bo6b

replace b077b = "1" if  b077b == "grass had dried up"
replace b077b = "1" if  b077b == "feeds were also scarce for the animals"
replace b077b = "1" if  b077b == "pasture also dried"
replace b077b = "1" if  b077b == "poor pasture"
replace b077b = "2" if  b077b == "There was no one to attend to the pigs."
replace b077b = "1" if  b077b == "The grass dried hence leaving the livestock with less to eat."
replace b077b = "2" if  b077b == "animals were not fed properly"
replace b077b = "1" if  b077b == "pastures dried off with limited water supply for  livestock to drink"
replace b077b = "1" if  b077b == "long drought dried grasses"
replace b077b = "1" if  b077b == "Some grass dried hence reducing livestock feed."
replace b077b = "1" if  b077b == "The grass also got burnt."
replace b077b = "3" if  b077b == "it was hard to find water to give them."
replace b077b = "1" if  b077b == "grasses around the compound was cleared eg for goats and cattle."
replace b077b = "1" if  b077b == "grass had dried up"
replace b077b = "1" if  b077b == "grasses were dried for animals"
replace b077b = "1" if  b077b == "grasses were dried up for animals"
replace b077b = "1" if  b077b == "grasses dried up hence little grass to feed on"
replace b077b = "1" if  b077b == "grasses were dried up for livestock"
replace b077b = "1" if  b077b == "few feeds were accessible"
replace b077b = "1" if  b077b == "pasture dried"
replace b077b = "1" if  b077b == "I became difficult to find green pastures for them."
replace b077b = "1" if  b077b == "it was hard to find where to feed them eg goats."
replace b077b = "1" if  b077b == "grasses were dried up for animals"
replace b077b = "1" if  b077b == "pasture also got burnt"
replace b077b = "1" if  b077b == "feed dried and got burnt"
replace b077b = "1" if  b077b == "natural pastures dried off making the feeds unavailable for the animals"
replace b077b = "1" if  b077b == "They had some food for pigs in the house which also got burnt."
replace b077b = "1" if  b077b == "pasture wilted and some dried"
replace b077b = "1" if  b077b == "Less feeding tothe animals"
replace b077b = "1" if  b077b == "feeds were scarce for the animals"
replace b077b = "1" if  b077b == "pasture wilted"
replace b077b = "1" if  b077b == "Livestock feeds dried out"
replace b077b = "1" if  b077b == "dried out feeds"
replace b077b = "1" if  b077b == "pasture wilted"
replace b077b = "1" if  b077b == "The pigs did not also have enough  to eat since  they also eat from the left overs of men."
replace b077b = "1" if  b077b == "The livestock feed feed like grass dried up."
replace b077b = "3" if  b077b == "They sold a goat raise money for fees."
replace b077b = "5" if  b077b == "There was no money to buy things like salt and other stuffs for the livestock."
replace b077b = "1" if  b077b == "Thd sun dried the grass that  the livestock  fed on."
replace b077b = "1" if  b077b == "The grass was not good for the goats either due to rain that was in excess."
replace b077b = "1" if  b077b == "Animals feed dried up"
replace b077b = "1" if  b077b == "pasture dried"
replace b077b = "1" if  b077b == "grasses dried"
replace b077b = "1" if  b077b == "pasture driex"
replace b077b = "1" if  b077b == "animals' feeds dried up"
replace b077b = "1" if  b077b == "pasture dried"
replace b077b = "1" if  b077b == "reduced feeds since pigs were not fed"
replace b077b = "1" if  b077b == "They livestock didn't have enough food also to eat like maize."
replace b077b = "1" if  b077b == "It was also burnt"
replace b077b = "1" if  b077b == "The grass for the livestock dried up."
replace b077b = "1" if  b077b == "Livestock feeds dried up"
replace b077b = "1" if  b077b == "grasses dried up"
replace b077b = "1" if  b077b == "They slashed the bush to host the people who came for the burial."
replace b077b = "1" if  b077b == "GRASSES ARE DRIED FOR ANIMALS"
replace b077b = "1" if  b077b == "GRASSES ARE DRIED UP FOR ANIMALS"
replace b077b = "1" if  b077b == "even pasture got burnt"
replace b077b = "1" if  b077b == "They had to clear the feeding area for the livestock during the burial period so that area looks clean."
replace b077b = "1" if  b077b == "grasses dried animals can't eat dry grasses."
replace b077b = "1" if  b077b == "grasses dried earlier and burn away."
replace b077b = "1" if  b077b == "pasture dried up"
replace b077b = "1" if  b077b == "grass dried up"
replace b077b = "1" if  b077b == "grasses dried up"
replace b077b = "1" if  b077b == "it became hard to get them feed"
replace b077b = "1" if  b077b == "some feed got rotten"
replace b077b = "1" if  b077b == "the local pastures became inadequate and of poor quality"
replace b077b = "1" if  b077b == "most feeds dried"
replace b077b = "1" if  b077b == "grass dried up"
replace b077b = "1" if  b077b == "nothing was there to give them"
replace b077b = "1" if  b077b == "She did not have enough food to cook in which the left overs would remain for the pigs."
replace b077b = "1" if  b077b == "the livestock feeds dried off and couldnt regenerate"
replace b077b = "1" if  b077b == "pastures became scarce"
replace b077b = "1" if  b077b == "THE GRASSES WERE DRIED"
replace b077b = "1" if  b077b == "limited feed supply"
replace b077b = "1" if  b077b == "the animal feeds (grass were depleted)"
replace b077b = "1" if  b077b == "dried the grasses for animal feed"


destring b077b,replace

#delimit ;
label define b077b
1 "Inadequate livestock feeds"
2 "Reduced labour for animal care"
3 "Inadequate water for livestock"
4 "Sold Livestock"
5 "Reduced household income"
;
#delimit cr

la values b077b b077b


save "Module B",replace



replace b09 = "1" if  b09 == "ACCIDENT"
replace b09 = "1" if  b09 == "ACCIDENT OF THE HOUSEHOLD HEAD"
replace b09 = "2" if  b09 == "ANIMAL DESEASES"
replace b09 = "2" if  b09 == "ANIMAL DISEASE"
replace b09 = "2" if  b09 == "ANIMAL DISEASES"
replace b09 = "1" if  b09 == "ANIMAL PEST AND DESEASES"
replace b09 = "4" if  b09 == "ANIMALS ATTACK ON FOOD CROPS"
replace b09 = "3" if  b09 == "BURNT HOUSE"
replace b09 = "3" if  b09 == "BUSH FIRE WHICH BURNT A HAT"
replace b09 = "2" if  b09 == "CHICKEN DISEASE"
replace b09 = "5" if  b09 == "CHRONIC ASTHMA"
replace b09 = "6" if  b09 == "CONFLICT WITH RELATIVES"
replace b09 = "7" if  b09 == "CROP DESEASES"
replace b09 = "7" if  b09 == "CROP DISEASE"
replace b09 = "7" if  b09 == "CROP DISEASE ATTACK"
replace b09 = "7" if  b09 == "CROP DISEASES"
replace b09 = "7" if  b09 == "CROP DISEASES E.G MAIZE"
replace b09 = "8" if  b09 == "CROP FAILURE"
replace b09 = "8" if  b09 == "CROP LOSS"
replace b09 = "8" if  b09 == "CROP PEST AND DESEASES"
replace b09 = "8" if  b09 == "CROP PESTS"
replace b09 = "8" if  b09 == "CROPS BEWITHCED"
replace b09 = "7" if  b09 == "CROPS DISEASES."
replace b09 = "8" if  b09 == "CROPS FAILURE"
replace b09 = "9" if  b09 == "DEATH"
replace b09 = "9" if  b09 == "DEATH OF A HOUSEHOLD MEMBER"
replace b09 = "9" if  b09 == "DEATH OF FAMILY"
replace b09 = "9" if  b09 == "DEATH OF FAMILY MEMBER"
replace b09 = "9" if  b09 == "DEATH OF HER DAUGTHER"
replace b09 = "9" if  b09 == "DEATH OF HER FATHER."
replace b09 = "9" if  b09 == "DEATH OF HER SON"
replace b09 = "9" if  b09 == "DEATH OF INLAW"
replace b09 = "9" if  b09 == "DEATH OF MEMBER"
replace b09 = "9" if  b09 == "DEATH OF MY MUM"
replace b09 = "5" if  b09 == "DISEASE ATTACK ON THE CHILD"
replace b09 = "5" if  b09 == "DISEASE ATTACK,HUMAN"
replace b09 = "5" if  b09 == "DISEASES"
replace b09 = "5" if  b09 == "DISEASES ON HUMAN"
replace b09 = "6" if  b09 == "DOMESTIC VIOLENT"
replace b09 = "6" if  b09 == "DOMESTIC VIOLENT."
replace b09 = "6" if  b09 == "DRAUGHT"
replace b09 = "10" if  b09 == "DROUGHT"
replace b09 = "11" if  b09 == "EARLY PREGNANCY OF CHILDREN"
replace b09 = "4" if  b09 == "ELEPHANT INVASION"
replace b09 = "10" if  b09 == "EXCESS RAIN"
replace b09 = "10" if  b09 == "EXTREM RAIN FALL"
replace b09 = "8" if  b09 == "FAILURE OF PEANUT CROPS"
replace b09 = "6" if  b09 == "FAMILY WRANGLE"
replace b09 = "9" if  b09 == "FINERAL IN THE COMMUNITY"
replace b09 = "10" if  b09 == "FLOOD"
replace b09 = "10" if  b09 == "FLOODS"
replace b09 = "10" if  b09 == "HEAVY RAINS"
replace b09 = "10" if  b09 == "HEAVY/ EXCESSIVE RAIN"
replace b09 = "10" if  b09 == "HIGH PRICES OF ITEMS IN MARKET"
replace b09 = "12" if  b09 == "HOUSE BURNT"
replace b09 = "3" if  b09 == "HUMAN  SICKNESS"
replace b09 = "5" if  b09 == "HUMAN DISEASE"
replace b09 = "5" if  b09 == "HUMAN DISEASE ATTACK"
replace b09 = "5" if  b09 == "HUMAN DISEASE ATTACKS"
replace b09 = "5" if  b09 == "HUMAN SICKNESS"
replace b09 = "5" if  b09 == "HUMAN VISUAL PROBLEM"
replace b09 = "13" if  b09 == "IMPRISONMENT"
replace b09 = "9" if  b09 == "INCREASE  IN HOUSEHOLD NUMBER ( ORPHANED GRAND KIDS MOVE IN)"
replace b09 = "13" if  b09 == "JAILING A FAMILY MEMBER"
replace b09 = "13" if  b09 == "JAILING OF THE HUSBAND"
replace b09 = "8" if  b09 == "LACK SEED TO PLANT"
replace b09 = "6" if  b09 == "LAND RWANGLE"
replace b09 = "6" if  b09 == "LAND RWANGLE."
replace b09 = "6" if  b09 == "LAND WRANGLE"
replace b09 = "2" if  b09 == "LIVESTOCK DISEASE"
replace b09 = "2" if  b09 == "LIVESTOCK DISEASES"
replace b09 = "2" if  b09 == "LIVESTOCK SICKNESS"
replace b09 = "9" if  b09 == "LOSS OF A LOVED ONE"
replace b09 = "9" if  b09 == "LOSS OF FAMILY MEMBERS"
replace b09 = "9" if  b09 == "LOSS OF GRAND PARENT"
replace b09 = "9" if  b09 == "LOSS OF LIFE"
replace b09 = "9" if  b09 == "LOSS OF LIFES"
replace b09 = "7" if  b09 == "MAIZE PEST"
replace b09 = "10" if  b09 == "MUCH RAIN"
replace b09 = "." if  b09 == "NONE"
replace b09 = "2" if  b09 == "OUTBREAK OF ANIMALS DISEASES."
replace b09 = "2" if  b09 == "PAULTRY DISEASES"
replace b09 = "2" if  b09 == "PEST"
replace b09 = "2" if  b09 == "PEST AND ANIMAL DESEASES"
replace b09 = "2" if  b09 == "PEST AND ANIMALS"
replace b09 = "2" if  b09 == "PEST AND CROPS DISEASES"
replace b09 = "2" if  b09 == "PEST AND DESEASES"
replace b09 = "2" if  b09 == "PESTS (GRASSHOPPERS)"
replace b09 = "2" if  b09 == "PESTS AND DISEASES"
replace b09 = "2" if  b09 == "PESTS LIKE GRASSHOPPERS"
replace b09 = "10" if  b09 == "PROLONGED  AND UNEXPECTED  DRYSPELL"
replace b09 = "10" if  b09 == "PROLONGED DROUGHT"
replace b09 = "1" if  b09 == "ROAD ACCIDENT"
replace b09 = "14" if  b09 == "ROBBERY"
replace b09 = "6" if  b09 == "SEPERATED WITH WIFE"
replace b09 = "15" if  b09 == "SHORTAGE OF LAND"
replace b09 = "5" if  b09 == "SICKNESS"
replace b09 = "5" if  b09 == "SICKNESS  OF FAMILY  MEMBERS"
replace b09 = "5" if  b09 == "SICKNESS OF FAMILY"
replace b09 = "5" if  b09 == "SICKNESS OF FAMILY HEAD"
replace b09 = "5" if  b09 == "SICKNESS OF FAMILY MEMBERS"
replace b09 = "5" if  b09 == "SICKNESS OF GRANDCHILD"
replace b09 = "5" if  b09 == "SICKNESS OF HH MEMBER"
replace b09 = "5" if  b09 == "SICKNESS OF HOUSEHOLD HEAD"
replace b09 = "5" if  b09 == "SICKNESS OF HOUSEHOLD MEMBER"
replace b09 = "5" if  b09 == "SICKNESS OF HOUSEHOLD MEMBERS"
replace b09 = "8" if  b09 == "SIMSIM FAILURE"
replace b09 = "4" if  b09 == "SNAKE BITE"
replace b09 = "9" if  b09 == "SUDDEN DEATH OF THE BROTHER"
replace b09 = "7" if  b09 == "TERMITES"
replace b09 = "14" if  b09 == "THEFT"
replace b09 = "14" if  b09 == "THEFT OF LIVESTOCKS"
replace b09 = "10" if  b09 == "TO MUCH RAIN"
replace b09 = "10" if  b09 == "TO MUCH SUNSHINE"
replace b09 = "10" if  b09 == "TOO HEAVY DOWN POUR DURING PLANTING TIME"
replace b09 = "10" if  b09 == "TOO MUCH RAIN"
replace b09 = "10" if  b09 == "TOO MUCH RAINFALL"
replace b09 = "10" if  b09 == "TOO MUCH SUNSHINE"
replace b09 = "10" if  b09 == "TOO MUCHSHINE."
replace b09 = "10" if  b09 == "UNBALANCED SEASONAL CHANGES"
replace b09 = "10" if  b09 == "UNEXPECTED DRY SPELL"
replace b09 = "10" if  b09 == "UNEXPECTED DRYSPELL"
replace b09 = "10" if  b09 == "UNPREDICTABLE SEASON"
replace b09 = "10" if  b09 == "UNRELLIABLE CLIMETIC CONDITION"
replace b09 = "10" if  b09 == "UNRELLIABLE SEASONS."
replace b09 = "10" if  b09 == "UNRELLIABLE WEATHER CONDITION"
replace b09 = "4" if  b09 == "WILD ANIMAL"
replace b09 = "4" if  b09 == "WILD ANIMALS"
replace b09 = "4" if  b09 == "WILD ANIMALS (ELEPHANTS)"
replace b09 = "4" if  b09 == "WILD ANIMALS DESTROYED CROPS"
replace b09 = "4" if  b09 == "WILD ANIMALS LIKE ELEPHANTS"

destring b09,replace

#delimit ;
label define b09
1 "Accident"
2 "Livestock Pests and diseases"
3 "Loss of main house through burning"
4 "Widlife attacked crops or humans"
5 "Human diseases"
6 "Conflict with relatives"
7 "Crop pests and diseases"
8 "Crop failure and loss"
9 "Death of a household member"
10 "Climatic Shocks"
11 "Early Pregnancy"
12 "High food prices"
13 "Imprisonment"
14 "Theft of properties"
15 "Shortage of land"

;
#delimit cr

la values b09 b09



replace b10b = "4" if  b10b == "swamp dried where they grow high value crop"
replace b10b = "2" if  b10b == "spent alot of resources on treatment and burial service"
replace b10b = "3" if  b10b == "there was limited income in the family"
replace b10b = "4" if  b10b == "it destroyed crops in the garden hence they had to resort to buying from the market"
replace b10b = "4" if  b10b == "lost stock"
replace b10b = "4" if  b10b == "crops were destroyed and we had nothing to sell to get money."
replace b10b = "3" if  b10b == "The rain was too much that was very difficult for us to move freely and work for money."
replace b10b = "3" if  b10b == "less work in farm"
replace b10b = "4" if  b10b == "The crops from which they earned failed to grow."
replace b10b = "4" if  b10b == "crops dried from the field and couldn't harvest enough to sell so as raise money"
replace b10b = "4" if  b10b == "Her peanuts fsiled due to extreme rain fall."
replace b10b = "3" if  b10b == "reduced sales to earn income for home"
replace b10b = "2" if  b10b == "spent alot on vertinary services"
replace b10b = "2" if  b10b == "all the money invested in farming got wasted since there was low yield"
replace b10b = "2" if  b10b == "paying for treatment in the clinic"
replace b10b = "3" if  b10b == "reduced the income"
replace b10b = "2" if  b10b == "used household income for the case"
replace b10b = "2" if  b10b == "paying hospital bills and reporting case to police"
replace b10b = "2" if  b10b == "spent household income for treatment"
replace b10b = "4" if  b10b == "She used to grow groundnuts and sale but since it failed, she did not have much that would be sold to stabilise her income."
replace b10b = "4" if  b10b == "alot of crop and animal were affected due to excess rain"
replace b10b = "4" if  b10b == "less harvest"
replace b10b = "2" if  b10b == "Mourners who came made her spend the little she had."
replace b10b = "4" if  b10b == "crop yield were reduce"
replace b10b = "2" if  b10b == "The sickness made her lose money in treating the livestock."
replace b10b = "4" if  b10b == "crops were stolen that could fetch money"
replace b10b = "4" if  b10b == "little harvest"
replace b10b = "4" if  b10b == "After destroying our crops we nothing to sell to raise income at home"
replace b10b = "4" if  b10b == "reduced production"
replace b10b = "2" if  b10b == "All i had was used for medical bill."
replace b10b = "4" if  b10b == "we had list harvest yet we depend on sale of agricultural product"
replace b10b = "4" if  b10b == "crops are always destroyed by these and you harvest little and get little income"
replace b10b = "2" if  b10b == "he use to give financial support to the household"
replace b10b = "2" if  b10b == "increased  health expenses"
replace b10b = "3" if  b10b == "lossed income  that wad invested in farming"
replace b10b = "3" if  b10b == "REDUCED SOURCE OF INCOME"
replace b10b = "2" if  b10b == "spent alot of money on treatment"
replace b10b = "1" if  b10b == "family did very  little  cultivation"
replace b10b = "3" if  b10b == "reduced on the income expectations of the household"
replace b10b = "5" if  b10b == "many animals died hence reduction on numbers to sell"
replace b10b = "5" if  b10b == "all animals diead as aresult of animal deseases"
replace b10b = "4" if  b10b == "crops were destroyed hence no sells leading to low income"
replace b10b = "2" if  b10b == "limited source of income for da family"
replace b10b = "2" if  b10b == "compromised ability to generate income"
replace b10b = "4" if  b10b == "the lost since cotton planted had very low yied and low income"
replace b10b = "4" if  b10b == "Crops were destroyed sometimes by too much rainfall or sunshine."
replace b10b = "4" if  b10b == "little harvest led to few sells of crops hence low income"
replace b10b = "4" if  b10b == "groundnut failed,"
replace b10b = "4" if  b10b == "few crops harvested hence low sells and little income"
replace b10b = "4" if  b10b == "Burnt alot of produce for sales"
replace b10b = "2" if  b10b == "spent money to buy medicines"
replace b10b = "4" if  b10b == "low crop yield hence, reduced income"
replace b10b = "5" if  b10b == "reduction in animal numbers for sell"
replace b10b = "2" if  b10b == "I spent  a lot of money in the hospital"
replace b10b = "4" if  b10b == "little crop harvest"
replace b10b = "4" if  b10b == "My crops were destroyed and there was nothing to sell to get money."
replace b10b = "4" if  b10b == "This affected us soo much because our crops were destroyed that you can not  harvest some things to take to market."
replace b10b = "2" if  b10b == "spent alot of money on treatment hence reducing the income of the household"
replace b10b = "4" if  b10b == "dried crops before mature hence little harvested and low sells hence little income"
replace b10b = "2" if  b10b == "SPENT MONEY TO TRY AND SOLVE THE LAND WRANGLE"
replace b10b = "2" if  b10b == "had to spend more on seeds"
replace b10b = "3" if  b10b == "limited income in the family"
replace b10b = "4" if  b10b == "low harvest of simsim led to no sells  hence little income"
replace b10b = "3" if  b10b == "lowered ability to get income for home"
replace b10b = "4" if  b10b == "destroyed crop planted for sale"
replace b10b = "4" if  b10b == "destroyed crop planted for sale"
replace b10b = "2" if  b10b == "paying hospital bills and transport"
replace b10b = "4" if  b10b == "simsim and beans fail to yield"
replace b10b = "2" if  b10b == "less profits from the money invested in farming due to low production"
replace b10b = "2" if  b10b == "we spent alot on burrial and keeping visitors during mourning"
replace b10b = "5" if  b10b == "i lost many goats that i would sell to raise enough money for household basic needs"
replace b10b = "3" if  b10b == "we run shortage of income from product sales sale due to  crops failure"
replace b10b = "2" if  b10b == "spent money to buy pesticides"
replace b10b = "4" if  b10b == "It would've been there for sale but it is no longer there because it failed."
replace b10b = "4" if  b10b == "high value crops especially semsame never fruited dueto excessive rain which came after too much sunshine. the end resukg resultwas poor harvest and hence little income earned"
replace b10b = "4" if  b10b == "the crops didn't yield well hence leading to less income"
replace b10b = "2" if  b10b == "spent on pesticides so, reduced household income"
replace b10b = "4" if  b10b == "most of the maize did not make it to the expectation."
replace b10b = "2" if  b10b == "lost income on farming"
replace b10b = "2" if  b10b == "spent money to buy pesticides"
replace b10b = "4" if  b10b == "destroyed crops and led to low harvest"
replace b10b = "1" if  b10b == "She never had strength to put some thing in the soil to grow for sale,."
replace b10b = "3" if  b10b == "It made her lose alot of things  that  she would have sold and got money  like food crops that was stored  in the house."
replace b10b = "3" if  b10b == "This always affected our income soo much because you think you will get good money after harvest,  but you en up getting nothing because crops are destroyed by sometimes too much rain or sun."
replace b10b = "4" if  b10b == "low harvest due to long duration of drought which reduced the economic activities in the family"
replace b10b = "3" if  b10b == "It has reduced work rate in my home and giving me income."
replace b10b = "1" if  b10b == "We separated and i was difficult to work alone."
replace b10b = "4" if  b10b == "crops got flooded and did not yield well causing less income earned"
replace b10b = "4" if  b10b == "it destroyed crops which were meant to earn income"
replace b10b = "4" if  b10b == "food crops which were sources of income dried out"
replace b10b = "4" if  b10b == "little harvest led to little sells and income"
replace b10b = "2" if  b10b == "Expensesmon farm labour increased. Household members were always engaged in nursing the sick"
replace b10b = "4" if  b10b == "low income due to low yield of crops"
replace b10b = "2" if  b10b == "Expenses on health increased"
replace b10b = "4" if  b10b == "low yield led to low harvest and income"
replace b10b = "2" if  b10b == "Expenditure health was increased beyond expected amount"
replace b10b = "4" if  b10b == "crops were washed away by flood leading to low yields of crops hence limited source of income"
replace b10b = "3" if  b10b == "money invested in production wax not recovered"
replace b10b = "3" if  b10b == "wasted money without much harvest"
replace b10b = "3" if  b10b == "reduced sales to earn household income"
replace b10b = "1" if  b10b == "She can not dig as she used to do in the past because  of the eye problem."
replace b10b = "2" if  b10b == "spent alot of money in the hospital leading to low income for the household"
replace b10b = "4" if  b10b == "low harvest led to low sells and income"
replace b10b = "2" if  b10b == "She spent money on transport to reach the ."
replace b10b = "3" if  b10b == "reduced income level due to little harvest"
replace b10b = "5" if  b10b == "All animals that I should have sold to give me income died."
replace b10b = "2" if  b10b == "reduced income for the household since crops were washed away leading to limited source of income"
replace b10b = "2" if  b10b == "taking care of mourners by buying things you don't have"
replace b10b = "3" if  b10b == "low income level for the household due to low yields"
replace b10b = "4" if  b10b == "reduced income due to high medical expenses"
replace b10b = "4" if  b10b == "low harvest led to low sell of crops and income"
replace b10b = "4" if  b10b == "crops were washed leading to low income in the family"
replace b10b = "2" if  b10b == "low harvest led to no sells hence low income"
replace b10b = "2" if  b10b == "low harvest led to low selks of crops hence income"
replace b10b = "4" if  b10b == "destroyed crops hence low harvest and income"
replace b10b = "2" if  b10b == "paying hospital bills"
replace b10b = "4" if  b10b == "the crops which were meant to be sold to get money did not yield like groundnuts"
replace b10b = "3" if  b10b == "Couldn't do farming to earn money"
replace b10b = "2" if  b10b == "transport to go to another district and releasing of the prisoner"
replace b10b = "2" if  b10b == "had to spend in  hiring  land for cultivation"
replace b10b = "3" if  b10b == "low source of income due to low yields"
replace b10b = "3" if  b10b == "spent on burial ceremonies"
replace b10b = "2" if  b10b == "reduced income from food crops"
replace b10b = "4" if  b10b == "treating of the livestock costs money"
replace b10b = "4" if  b10b == "Had crop loss and little sales"
replace b10b = "4" if  b10b == "Crops poorly yielded"
replace b10b = "2" if  b10b == "Reduced income of the household due to reduced productivity"
replace b10b = "2" if  b10b == "The little he had he spent it in the hospital."
replace b10b = "1" if  b10b == "It has limited the level my farming."
replace b10b = "2" if  b10b == "Every thing in the house was misused due to misunderstandings between me and my husband."
replace b10b = "1" if  b10b == "The sickness made them  too weak to grow crops for income"
replace b10b = "4" if  b10b == "crops were destroyed and I it affected the way of getting money."
replace b10b = "4" if  b10b == "Harvest are always lower than the what i expect."
replace b10b = "4" if  b10b == "Crops were destroyed and i had nothing to sell."
replace b10b = "4" if  b10b == "crops were losed to elephants"
replace b10b = "2" if  b10b == "spent money to buy medicine"
replace b10b = "4" if  b10b == "Crops were destroyed and i had nothing to sell an get money."
replace b10b = "4" if  b10b == "low yields as a result of floods leading to limited income"
replace b10b = "4" if  b10b == "low yields of crops leading to little income for the family"
replace b10b = "4" if  b10b == "The sun made her peanuts to fail."
replace b10b = "2" if  b10b == "spent money to buy pesticide"
replace b10b = "2" if  b10b == "Burial expense were higher than what the household can afford"
replace b10b = "2" if  b10b == "Spent in the hospital and at the burial"
replace b10b = "4" if  b10b == "Loss alot of crops"
replace b10b = "2" if  b10b == "contributions for funeral service"
replace b10b = "2" if  b10b == "buying drugs and transport"
replace b10b = "4" if  b10b == "crops were destroyed hence nothing to earn from"
replace b10b = "2" if  b10b == "spent money on medicines  for treating them"
replace b10b = "4" if  b10b == "destroyed crops meant to earn income"
replace b10b = "2" if  b10b == "spent on treatment before death"
replace b10b = "4" if  b10b == "destroyed groundnuts, rice and millet causing low income"
replace b10b = "3" if  b10b == "it eat the crops especially the seeds hence less income"
replace b10b = "2" if  b10b == "spent alot in the hospital during operation"
replace b10b = "2" if  b10b == "reduced since money was spent but no harvest was made"
replace b10b = "4" if  b10b == "crops were dried hence shortage of income"
replace b10b = "5" if  b10b == "animals died hence reduction in thier numbers and low income"
replace b10b = "4" if  b10b == "destroyed simsim hence low yield and no sells which led to limited income"
replace b10b = "3" if  b10b == "She did not have birds to sale and get money."
replace b10b = "4" if  b10b == "The was poor havest and I can't get enough to sell."
replace b10b = "1" if  b10b == "Affected her ability to cultivate"
replace b10b = "3" if  b10b == "low level of economic activities leading to limited income for the family"
replace b10b = "4" if  b10b == "crops were destroyed which led to low harvest and income"
replace b10b = "4" if  b10b == "there was no crops to sell since they were destroyed"
replace b10b = "4" if  b10b == "The crops like maize and cassava did not do well and could not sale much for good income."
replace b10b = "2" if  b10b == "paying hospital bills"
replace b10b = "3" if  b10b == "Crops are always affected and it becomes hard to find what to sell to give us income."
replace b10b = "4" if  b10b == "Cash crops were destroyed and I had nothing to sell to raise income."
replace b10b = "4" if  b10b == "She injected most of her money in the garden and it did not come back."
replace b10b = "4" if  b10b == "It spoilt the maize in the garden hence affecting their income."
replace b10b = "5" if  b10b == "I was weak and can't do anything to get money."
replace b10b = "4" if  b10b == "They ate his crops that he would have sold."
replace b10b = "2" if  b10b == "usually when our plants are affected by this getting money become hard."
replace b10b = "2" if  b10b == "household harvest reduced"
replace b10b = "2" if  b10b == "low harvest recorded hence spent money to buy other food"
replace b10b = "4" if  b10b == "destroyed cassava garden which led to low harvest and income"
replace b10b = "2" if  b10b == "had poor harvest, couldn't raise enough income from crop sales"
replace b10b = "2" if  b10b == "spending money in paying hospital bills"
replace b10b = "4" if  b10b == "destroyed crops planted hence"
replace b10b = "3" if  b10b == "limited income for the family"
replace b10b = "3" if  b10b == "limited source of income since crops were washed"
replace b10b = "2" if  b10b == "spent household income on treatment"
replace b10b = "3" if  b10b == "limited income for the family"
replace b10b = "3" if  b10b == "She spent the money that  she had kept ."
replace b10b = "2" if  b10b == "alot of money was spent in medical treatment leading to limited income in the household"
replace b10b = "2" if  b10b == "I spent a lot of money in court seeking for justice."
replace b10b = "5" if  b10b == "all the goats and chicken died hence money lost"
replace b10b = "3" if  b10b == "reduced household income due to treatment"
replace b10b = "4" if  b10b == "cassava and other crop fields flooded hence low harvest since others got rotten"
replace b10b = "4" if  b10b == "It's the crops they depend on to earn and it's  failure made their earning negatively  affected."
replace b10b = "4" if  b10b == "low yields of crops leading to limited souce of income"
replace b10b = "2" if  b10b == "I was taken to police and I had to pay money to get out."
replace b10b = "4" if  b10b == "Incured losses on farming without proper harvest"
replace b10b = "3" if  b10b == "low inco e due to low production"
replace b10b = "4" if  b10b == "low harvest which led to low sells hence low income"
replace b10b = "4" if  b10b == "The sun dried their  crops."
replace b10b = "2" if  b10b == "spent money on treatment"
replace b10b = "2" if  b10b == "spent money to buy pesticides"
replace b10b = "2" if  b10b == "She sold her crops and other stuffs to raise  money for hospital bills."
replace b10b = "4" if  b10b == "crops were washed hence limiting the source of income"
replace b10b = "2" if  b10b == "used money to pay hospital bills"
replace b10b = "3" if  b10b == "he is the major source of income"
replace b10b = "2" if  b10b == "I spent a lot both in court and transport."
replace b10b = "3" if  b10b == "limited source of income for the family"
replace b10b = "4" if  b10b == "Destroyed crops, the sources of income"
replace b10b = "3" if  b10b == "reduced income on human as a result of medical treatment"
replace b10b = "1" if  b10b == "There was no strength to dig as he used to do in the past for some income."
replace b10b = "2" if  b10b == "transport, feeding and paying hospital bills"
replace b10b = "1" if  b10b == "It reduces the level of farming."
replace b10b = "2" if  b10b == "spent houdehold income on treatment"
replace b10b = "4" if  b10b == "had no harvest"
replace b10b = "3" if  b10b == "used stock to be sold"
replace b10b = "3" if  b10b == "increased demand for food"
replace b10b = "3" if  b10b == "ALOT OF PROPERTIES WERE DESTROYED AS RESULT OF CONFLICT"
replace b10b = "2" if  b10b == "SPENT ALOT OF MONEY ON TREATMENT IN THE HOSPITAL"
replace b10b = "2" if  b10b == "taking care of mourners"
replace b10b = "4" if  b10b == "no harvest"
replace b10b = "5" if  b10b == "labour for farm work"
replace b10b = "2" if  b10b == "spent money on treatment"
replace b10b = "4" if  b10b == "simsim were destroyed hence no sell of crops lesding to no income"
replace b10b = "2" if  b10b == "buying drugs, paying bills"
replace b10b = "3" if  b10b == "reduced invome, harvested less"
replace b10b = "3" if  b10b == "lowered capacity to earn income"
replace b10b = "4" if  b10b == "the crops meant to raise income dried"
replace b10b = "4" if  b10b == "The crops that would have been harvested from the garden for food and for money failed to grow well."
replace b10b = "4" if  b10b == "There was nothing left to harvest and sale."
replace b10b = "2" if  b10b == "spent alot in the household income for medication"
replace b10b = "5" if  b10b == "reduce her ability to do casual labour"
replace b10b = "2" if  b10b == "spend money on making burial arrangements"
replace b10b = "2" if  b10b == "spent alot of resources on health care"
replace b10b = "3" if  b10b == "little  harveste resulted and couldn't be sold for income generation"
replace b10b = "3" if  b10b == "crops were destroyed and you i had nothing to sell."
replace b10b = "2" if  b10b == "we used alot of money in the funeral services"
replace b10b = "2" if  b10b == "we over spenton hospital bills to treat the sickle cell"
replace b10b = "3" if  b10b == "Since crops are destroyed i had nothing to sell."
replace b10b = "3" if  b10b == "earned little from fromfarming yet we depends on farms output as source of income"
replace b10b = "5" if  b10b == "we experienced shortage of family labour to work for money"
replace b10b = "5" if  b10b == "it was hard to casual work in people's fields to raise money due to dry and hard soil"
replace b10b = "4" if  b10b == "cash crop were destroyed and i hard to sell."
replace b10b = "2" if  b10b == "spent alot of money for treatment."
replace b10b = "3" if  b10b == "They lost all their assets in the house that burnt down which they used to earn a living."
replace b10b = "3" if  b10b == "reduced household income"
replace b10b = "2" if  b10b == "spent household income on treatment"
replace b10b = "3" if  b10b == "reduced household inccome since there was nothing to sell"
replace b10b = "2" if  b10b == "paid hospital bills and feeding"
replace b10b = "5" if  b10b == "animal died hence could not be sold"
replace b10b = "2" if  b10b == "buying drugs and othr hospital bills"
replace b10b = "2" if  b10b == "spent alot on treatment/meeting hospital bill"
replace b10b = "5" if  b10b == "SPENT MOST TIME IN HOSPITALS, CAN NOT DO ANY OTHER ECONOMIC ACTIVITY"
replace b10b = "2" if  b10b == "spend alot on treatment"
replace b10b = "2" if  b10b == "SPENT MOST OF THE INCOME IN TREATMENT"
replace b10b = "2" if  b10b == "spent income on pesticides"
replace b10b = "3" if  b10b == "low harvest led to low sells hence low income"
replace b10b = "3" if  b10b == "reduced source fee of income"
replace b10b = "4" if  b10b == "crops got destroyed and you can get what sell"
replace b10b = "5" if  b10b == "hospitalised for 2 month"
replace b10b = "4" if  b10b == "level of harvest was poor  and i can't get money from other sources."
replace b10b = "4" if  b10b == "failed to reap from beans which she could sell"
replace b10b = "4" if  b10b == "low harvest of crops hence no crops to sell"
replace b10b = "5" if  b10b == "animals died and we got little money from sale of livestocks"
replace b10b = "4" if  b10b == "low farm output"
replace b10b = "3" if  b10b == "i struggle alone to get money to meet family basic needs"
replace b10b = "2" if  b10b == "buying drugs using saved money"
replace b10b = "3" if  b10b == "had no food items to sell"
replace b10b = "3" if  b10b == "reduced, money spent for burial arrangements"
replace b10b = "3" if  b10b == "could not sell few simsims harvested"
replace b10b = "5" if  b10b == "my ability to work was reduced"
replace b10b = "3" if  b10b == "they became broke since income reduced"
replace b10b = "3" if  b10b == "REDUCED ON THE INCOME EXPECTATIONS"
replace b10b = "3" if  b10b == "crops were spoilt and you nothing to sell to get money."
replace b10b = "3" if  b10b == "As farmer you get money from the harvest , that mean if you don't it you have no money."
replace b10b = "3" if  b10b == "She was not able to get up and make money as she did before while in good health."
replace b10b = "2" if  b10b == "SPENT ALOT ON MEDICAL TREATMENT"
replace b10b = "2" if  b10b == "reduced, spending in the hospital"
replace b10b = "5" if  b10b == "reduced on available labour"
replace b10b = "4" if  b10b == "destroyed crops in the garden and there was low harvest hence no food to sell"
replace b10b = "4" if  b10b == "The crops dried up and there was nothing to sale and get money."
replace b10b = "2" if  b10b == "used all savings"
replace b10b = "4" if  b10b == "It affected in a way there was no one to give advice on how they can have enough food and as a result the volume of food declined."
replace b10b = "4" if  b10b == "crops was spoilt that you can not anything from the garden to sell."
replace b10b = "4" if  b10b == "crops meant for income had very low yield"
replace b10b = "4" if  b10b == "didnt have energy to cultivate land for income generation"
replace b10b = "2" if  b10b == "alot of money went on treatment"
replace b10b = "2" if  b10b == "spent household income for medication"
replace b10b = "2" if  b10b == "SPEND MONEY IN HOSPITALS"
replace b10b = "3" if  b10b == "all the plant was spoilt leaving nothing to sell to raise money"
replace b10b = "3" if  b10b == "nothing was plant and nothing was there to sell to raise money"
replace b10b = "3" if  b10b == "they had low yield of crops hence low income"
replace b10b = "3" if  b10b == "low crop production led to low sells of food"
replace b10b = "2" if  b10b == "spend most of house hold income"
replace b10b = "3" if  b10b == "low crop production led to low income"
replace b10b = "3" if  b10b == "few food to sell due to low crop production"
replace b10b = "2" if  b10b == "increased expenditure on health/hospital bills"
replace b10b = "4" if  b10b == "crops were destroyed from the garden and i had nothing sell to get money since i am a farmer."


destring b10b,replace

#delimit ;
label define b10b
1 "Reduced farm labour"
2 "Increased household expenditure"
3 "Reduced household income"
4 "Crops were destroyed"
5 "Death of livestock"

;
#delimit cr


la values b10b b10b


save "Module B",replace


replace b11b = "1" if  b11b == "lost items"
replace b11b = "2" if  b11b == "He sold his bed and a table."
replace b11b = "2" if  b11b == "sold household assets"
replace b11b = "2" if  b11b == "sold assets e.g. bicycle, radio"
replace b11b = "2" if  b11b == "She sold her chair to get money and treat the goat."
replace b11b = "1" if  b11b == "thieves broke into their shop"
replace b11b = "1" if  b11b == "burnt assets of the house"
replace b11b = "2" if  b11b == "sold assets"
replace b11b = "2" if  b11b == "some ofthe assets are sold for her treatment and for her burrial after she passed on"
replace b11b = "2" if  b11b == "She sold her chairs and the the hoe."
replace b11b = "1" if  b11b == "The assets got burnt in the house."
replace b11b = "1" if  b11b == "We had to divide them."
replace b11b = "1" if  b11b == "We had a fight and other things like chairs were broken."
replace b11b = "1" if  b11b == "houses were also destroyed"
replace b11b = "2" if  b11b == "Sold asseys to get money"
replace b11b = "1" if  b11b == "Land owned by household was dwindled"
replace b11b = "2" if  b11b == "Sold assets to raise money"
replace b11b = "1" if  b11b == "Others were broken in fighting eg chairs."
replace b11b = "1" if  b11b == "They sold four chairs to meet the needs at that particular time."
replace b11b = "2" if  b11b == "sold an oxplough"
replace b11b = "2" if  b11b == "sold bicycle to pay hospital bills"
replace b11b = "2" if  b11b == "sold assets to raise income"
replace b11b = "2" if  b11b == "I was forced to sell assets."
replace b11b = "2" if  b11b == "They sold their bed."
replace b11b = "2" if  b11b == "sold furniture"
replace b11b = "2" if  b11b == "My asset was burnt in the house."
replace b11b = "1" if  b11b == "They were all burnt."
replace b11b = "1" if  b11b == "HOUSE AND PROPERTIES WERE VANDALISED"
replace b11b = "2" if  b11b == "sold assets"
replace b11b = "1" if  b11b == "spoilt the house roof"
replace b11b = "2" if  b11b == "sold some of my assets to raise money in relation to his burial"
replace b11b = "2" if  b11b == "we sold our assets at the time of scarcity of  money for hospital"
replace b11b = "2" if  b11b == "my house was broken and everything like tv, radio etc got spoilt."
replace b11b = "2" if  b11b == "sold assets for hospital bills eg we sold a radio among others"
replace b11b = "1" if  b11b == "Their bicycle, plates, bedings, and many other things were lost in the fire."
replace b11b = "2" if  b11b == "sold solar panel"
replace b11b = "2" if  b11b == "sold both crop and animal to meet medical expense"
replace b11b = "2" if  b11b == "we sold other assets as alternative source of income"
replace b11b = "2" if  b11b == "the husband sold of home assets to raise money for drinking"
replace b11b = "2" if  b11b == "some assets like livestocks were sold"
replace b11b = "2" if  b11b == "She sold her crops she had kept in the house for other purposes."
replace b11b = "1" if  b11b == "She lost her plastic chairs as she hosted the mourners."
replace b11b = "2" if  b11b == "sold livestock to raise money to cater for hospital bills"
replace b11b = "2" if  b11b == "turned .to selling househol produce for school fees"
replace b11b = "2" if  b11b == "force to sell assets to raise money"
replace b11b = "3" if  b11b == "borrow some credit while using the table as a security asset given to the person"

destring b11b,replace
#delimit ;
label define b11b
1 "Lost household assets"
2 "Sold household assets"
3 "Used household assets as a collateral for loan"
;
#delimit cr
la values b11b b11b
save "Module B",replace


replace b12b = "1" if  b12b == "crops dried in garden"
replace b12b = "2" if  b12b == "food kept for household consumption was depleted"
replace b12b = "2" if  b12b == "reduced food for the family"
replace b12b = "2" if  b12b == "they was little food whereby they had to buy from the market"
replace b12b = "2" if  b12b == "lost food"
replace b12b = "1" if  b12b == "food crops were also destroyed by this and it became hard to find what to cook sometime."
replace b12b = "3" if  b12b == "Going to the market to buy food was hard because even the road was flooded."
replace b12b = "2" if  b12b == "less production"
replace b12b = "2" if  b12b == "There was no food because what they had planted failed."
replace b12b = "1" if  b12b == "food crops dried from the field"
replace b12b = "2" if  b12b == "She had less to eat since other crops did not make it because of the rain that was too much."
replace b12b = "2" if  b12b == "greatly reduce food stability"
replace b12b = "1" if  b12b == "vegetables  i planted at the compound on a small scale dried out"
replace b12b = "4" if  b12b == "money for buying food  to supplementsthose in the garden were wasted on buying drugs for pigs"
replace b12b = "2" if  b12b == "little harvest hence less food availability"
replace b12b = "5" if  b12b == "sold sesame meant for food"
replace b12b = "5" if  b12b == "sold food items"
replace b12b = "2" if  b12b == "LIMITED FOOD IN THE FAMILY SINCE MILET WAS WASHED AWAY BY HEAVY RAIN"
replace b12b = "6" if  b12b == "the things he bought from town during the accident all got scattered on the road"
replace b12b = "5" if  b12b == "sold food items (beans)"
replace b12b = "1" if  b12b == "The crops failed and did not have enough groundnuts to eat."
replace b12b = "1" if  b12b == "crop yield were detered by excess rain"
replace b12b = "2" if  b12b == "little harvest"
replace b12b = "4" if  b12b == "She had to give what she had in the house to feed the mourners."
replace b12b = "2" if  b12b == "little harvest from the garden"
replace b12b = "2" if  b12b == "reduce output from farm"
replace b12b = "2" if  b12b == "litle harvest"
replace b12b = "1" if  b12b == "food crops were destroyed and it was not easy to get food."
replace b12b = "1" if  b12b == "harvested wastedin garden"
replace b12b = "5" if  b12b == "food crops was sold ."
replace b12b = "1" if  b12b == "our food crops dried up from the field"
replace b12b = "2" if  b12b == "When crops are destroyed it becomes had to get what to cook."
replace b12b = "2" if  b12b == "he was part of family labours who could help in farming activities which ensure adequate food in the family"
replace b12b = "5" if  b12b == "sold food items to attain money for hospital  bills"
replace b12b = "2" if  b12b == "had poor hsrvest"
replace b12b = "2" if  b12b == "limited diversity of food for the family"
replace b12b = "5" if  b12b == "sold some food to raise money for treatment"
replace b12b = "5" if  b12b == "harvest  was too low due to small cultivation"
replace b12b = "5" if  b12b == "sold some food in the house to cope up with da shock"
replace b12b = "7" if  b12b == "many animals died hence little food"
replace b12b = "7" if  b12b == "death of animals led to reduction in food consumption due to little income"
replace b12b = "2" if  b12b == "little harvest because of too much rain led to little food at home"
replace b12b = "2" if  b12b == "limited diversity of food for the household"
replace b12b = "8" if  b12b == "weak to tilt land"
replace b12b = "2" if  b12b == "Since food crops were destroyed i had nothing to cook sometimes."
replace b12b = "2" if  b12b == "low harvest led to little food"
replace b12b = "2" if  b12b == "no groundnut this season"
replace b12b = "2" if  b12b == "low harvest led to little food at home"
replace b12b = "2" if  b12b == "food stocks were lost e.g sorghum and rice"
replace b12b = "4" if  b12b == "little money to buy food was spent on animal medicine"
replace b12b = "2" if  b12b == "reduced food stock"
replace b12b = "7" if  b12b == "animals that should have provided food at home died"
replace b12b = "5" if  b12b == "I sold every food in house to get money for medical bill."
replace b12b = "1" if  b12b == "low yield of crop"
replace b12b = "1" if  b12b == "Food crops were also destroyed"
replace b12b = "2" if  b12b == "food crops were destroyed and it became hard to find what to cook at home."
replace b12b = "2" if  b12b == "reduced food diversity since there was little time to grow crops"
replace b12b = "2" if  b12b == "little crop harvest led to little food at home"
replace b12b = "4" if  b12b == "limited land to do agricultural activities to raise food for the family"
replace b12b = "2" if  b12b == "food crop harvest was greatly affected"
replace b12b = "5" if  b12b == "low harvest led to little income"
replace b12b = "4" if  b12b == "sold the little food items for treatment"
replace b12b = "2" if  b12b == "quality of harvest reduced"
replace b12b = "2" if  b12b == "reduce yield"
replace b12b = "5" if  b12b == "sold groundnut and sesame plus millet hence low food availability"
replace b12b = "1" if  b12b == "crops like simsim and beans were left in the garden"
replace b12b = "4" if  b12b == "the little they harvested was used to pay feesafter selling"
replace b12b = "2" if  b12b == "much food was consumed during this period than what we had budgeted for"
replace b12b = "2" if  b12b == "we have inadequate amount of food in the house"
replace b12b = "1" if  b12b == "food crops in the garden never fruited this resulted to low harvest"
replace b12b = "4" if  b12b == "money to buy other food was used to buy pesticides"
replace b12b = "2" if  b12b == "They used it for food also but it was no more due to failure."
replace b12b = "2" if  b12b == "i had little food stored in the house as a result of crops failure"
replace b12b = "2" if  b12b == "there was less food available due to low yield"
replace b12b = "5" if  b12b == "sold food stuffs for survival"
replace b12b = "2" if  b12b == "They did not have enough maize for food."
replace b12b = "2" if  b12b == "reduced food avilability, low crop yield"
replace b12b = "2" if  b12b == "low yield of crops led to little food"
replace b12b = "2" if  b12b == "low harvest led to little food"
replace b12b = "2" if  b12b == "There was difficult for her in getting food since she never did much in the garden."
replace b12b = "1" if  b12b == "The house burnt with food in it that was for consumption."
replace b12b = "2" if  b12b == "crops are always destroyed and it becomes difficult to find out what to eat at times."
replace b12b = "2" if  b12b == "shortage of food for the family"
replace b12b = "1" if  b12b == "I have to plant small and get little food because no one is there to weed fo me"
replace b12b = "5" if  b12b == "I sold food in house out annoyance later suffered."
replace b12b = "1" if  b12b == "the flooded crops got rotten"
replace b12b = "1" if  b12b == "cassava got rotten and other crops did not yield well"
replace b12b = "2" if  b12b == "harvested nothing for food"
replace b12b = "2" if  b12b == "low harvest led to little food"
replace b12b = "2" if  b12b == "Food crop field size was reduced"
replace b12b = "2" if  b12b == "low yield led to little food at home"
replace b12b = "8" if  b12b == "Labour spent onfood crop cultivation was affected"
replace b12b = "2" if  b12b == "low harvest led to limited food at home"
replace b12b = "2" if  b12b == "Money intended for food purchase was reduced"
replace b12b = "2" if  b12b == "low diversity of food due to low yields"
replace b12b = "1" if  b12b == "the yield was low for food crops"
replace b12b = "2" if  b12b == "reduced food availability"
replace b12b = "2" if  b12b == "harvest little, reduced household capacity"
replace b12b = "8" if  b12b == "Since she can not dig, food issue is becoming  a problem."
replace b12b = "4" if  b12b == "sold some food crops to raise some money for treatment"
replace b12b = "2" if  b12b == "low harvest led to little food"
replace b12b = "5" if  b12b == "She sold her maize to get money for hospital bills."
replace b12b = "2" if  b12b == "Food stuffs greatly reduced since they depend on farming"
replace b12b = "5" if  b12b == "Sometimes i used to sell the animal when there shortage of food, this time there was nothing."
replace b12b = "2" if  b12b == "low diversity of food"
replace b12b = "2" if  b12b == "sold some and others used for feeding"
replace b12b = "2" if  b12b == "low diversity of food for the household"
replace b12b = "2" if  b12b == "sold some food to raise some money for medical treatment"
replace b12b = "2" if  b12b == "low harvest led to little food at home"
replace b12b = "2" if  b12b == "limited food in the family"
replace b12b = "2" if  b12b == "low yied led to little food at home"
replace b12b = "2" if  b12b == "low yield led to little food"
replace b12b = "2" if  b12b == "little harvest led to low food"
replace b12b = "5" if  b12b == "sold groundnuts and beans"
replace b12b = "1" if  b12b == "cassava got rotten and other food crops did not yield well"
replace b12b = "5" if  b12b == "sold food stocks"
replace b12b = "1" if  b12b == "Crop field size was reduced"
replace b12b = "2" if  b12b == "low diversity of food for the household"
replace b12b = "2" if  b12b == "Used and sold away good stuffs"
replace b12b = "2" if  b12b == "there was less food stock in the household"
replace b12b = "5" if  b12b == "sold some bananas"
replace b12b = "1" if  b12b == "Food crop harvest was affected"
replace b12b = "2" if  b12b == "Food crop harvest was low"
replace b12b = "2" if  b12b == "Harvested less food for the household"
replace b12b = "4" if  b12b == "The food that was in the house was sold to top the little money they had  to help in treating the  patient."
replace b12b = "6" if  b12b == "I can't plant enough food crops due to small land."
replace b12b = "6" if  b12b == "We had to divide the the little ones that was there into two and I was left with little ."
replace b12b = "2" if  b12b == "There was no enough time for them to grow even crops for food."
replace b12b = "1" if  b12b == "Food crops were destroyed"
replace b12b = "2" if  b12b == "Crops are always destroyed and it becomes affect the present of food."
replace b12b = "2" if  b12b == "Food crops were affected and getting food becomes hard."
replace b12b = "2" if  b12b == "Household food major source affected"
replace b12b = "2" if  b12b == "decrease in paultry led to decrease in food at home"
replace b12b = "1" if  b12b == "crops dried up from the garden and it affects the present of food in the house."
replace b12b = "2" if  b12b == "low diversity of food in the household"
replace b12b = "2" if  b12b == "low yields of crops hence low diversity of food"
replace b12b = "2" if  b12b == "The peanuts was scorched and it affected food availability."
replace b12b = "2" if  b12b == "there was low yield hence little food"
replace b12b = "5" if  b12b == "food in storage were sold to raise money"
replace b12b = "5" if  b12b == "sold food stocks"
replace b12b = "2" if  b12b == "Didn't harvest enough food"
replace b12b = "4" if  b12b == "you contribute food for funeral service"
replace b12b = "4" if  b12b == "sold some food to treat the patient"
replace b12b = "4" if  b12b == "money to buy other food was used to buy medicine"
replace b12b = "5" if  b12b == "Sold food stocks which greatly affected the household"
replace b12b = "2" if  b12b == "food production was low"
replace b12b = "2" if  b12b == "food became little due to little crops harvested"
replace b12b = "8" if  b12b == "there was no food due to the sickness"
replace b12b = "2" if  b12b == "there was no food in the household"
replace b12b = "2" if  b12b == "limited source of food for the family"
replace b12b = "7" if  b12b == "death of animals led to reduction in the source of food"
replace b12b = "2" if  b12b == "little harvest led to reduced food guantity at home"
replace b12b = "2" if  b12b == "Food crops were destroyed and it became hard to get what to cook at times."
replace b12b = "8" if  b12b == "Didn't cultivate enough food items"
replace b12b = "2" if  b12b == "limited crops were grown leading to shortage food in the household"
replace b12b = "2" if  b12b == "little food due to low harvest"
replace b12b = "2" if  b12b == "reduced household food capacity"
replace b12b = "2" if  b12b == "They used to eat less meals because there was not enough to cook"
replace b12b = "5" if  b12b == "sold millet 2 sacs"
replace b12b = "2" if  b12b == "food crops are destroyed before it's ready and it becomes difficult to get food."
replace b12b = "2" if  b12b == "Food crops were also destroyed by this and it became hard to find what to cook."
replace b12b = "2" if  b12b == "There was no food since what they planted for food  failed."
replace b12b = "2" if  b12b == "All the seeds they took to the garden never camo back."
replace b12b = "2" if  b12b == "It was hard to find what to cook because I didn't dig for one year."
replace b12b = "1" if  b12b == "The food  they would have eaten was eaten by the elephant."
replace b12b = "2" if  b12b == "All the food are affected and i limited food in the house."
replace b12b = "2" if  b12b == "Household head Can no raise enough fod"
replace b12b = "2" if  b12b == "low yield led to little food"
replace b12b = "4" if  b12b == "The little harvest was used to support burial expense"
replace b12b = "2" if  b12b == "there was little harvest due to too much rain hence little food in an household"
replace b12b = "2" if  b12b == "had limited food variety"
replace b12b = "2" if  b12b == "low production of food crops hence low availability"
replace b12b = "2" if  b12b == "there is mostly no harvest because crops are destroyed causing less availability"
replace b12b = "2" if  b12b == "reduced food in the family"
replace b12b = "2" if  b12b == "limited food in the family"
replace b12b = "2" if  b12b == "stopped farming the whole year so there were no food stocks"
replace b12b = "2" if  b12b == "crops were dried up leading to limited diversity of food"
replace b12b = "2" if  b12b == "most time was spent in the hospital hence limited food for the household"
replace b12b = "5" if  b12b == "I sold food in the house and remained with nothing."
replace b12b = "7" if  b12b == "livestock meant for balance diet all died"
replace b12b = "8" if  b12b == "could not do farming to get food for  the household"
replace b12b = "1" if  b12b == "crops got rotten and you can not eat"
replace b12b = "2" if  b12b == "The food that failed was what they survived on and it made life not good in their  home."
replace b12b = "2" if  b12b == "low diversity of food for the household due to low yields"
replace b12b = "2" if  b12b == "food was also burnt"
replace b12b = "2" if  b12b == "the household capacity greatly reduced"
replace b12b = "1" if  b12b == "elephants destroyed all crops especially maize and millet"
replace b12b = "2" if  b12b == "little harvest led to little food at home"
replace b12b = "2" if  b12b == "The sun made people  suffer  with  hunger ."
replace b12b = "4" if  b12b == "money to buy food was used for treatment"
replace b12b = "4" if  b12b == "money to buh food was spent on pesticides"
replace b12b = "2" if  b12b == "She had food and sold it all  because she needed money at that time."
replace b12b = "2" if  b12b == "there was limited diversity of foods for the family"
replace b12b = "4" if  b12b == "sold some of the food items in the house"
replace b12b = "4" if  b12b == "Food stock is always sold to meet his hospital bill"
replace b12b = "2" if  b12b == "All i had in the house was burnt."
replace b12b = "2" if  b12b == "low food diversity for the family"
replace b12b = "2" if  b12b == "Destroyed food sources, reduced food availability"
replace b12b = "2" if  b12b == "limited diversity of food in the household"
replace b12b = "5" if  b12b == "He had to sale some crops to get money treatment hence affecting food availability in the house."
replace b12b = "8" if  b12b == "reduced capacity to get household food items"
replace b12b = "2" if  b12b == "Had no food harvest"
replace b12b = "2" if  b12b == "used food stock"
replace b12b = "2" if  b12b == "less than required was available"
replace b12b = "2" if  b12b == "They cooked the produce which was in the house for mourners hence reducing food availability."
replace b12b = "2" if  b12b == "LIMITED FOOD FOR THE FAMILY"
replace b12b = "2" if  b12b == "SOLD SOME FOOD ITEMS TO RAISE MONEY FOR TREATMENT"
replace b12b = "5" if  b12b == "sold groundnut"
replace b12b = "1" if  b12b == "little harvest"
replace b12b = "8" if  b12b == "labour for fwrm work"
replace b12b = "8" if  b12b == "did not farm much hence little food"
replace b12b = "2" if  b12b == "no harvest led to little food at home"
replace b12b = "2" if  b12b == "reduced food availability"
replace b12b = "5" if  b12b == "sold food items to pay school"
replace b12b = "2" if  b12b == "food availability was low due low yield"
replace b12b = "2" if  b12b == "There was no good harvest and the little they had got finished quickly."
replace b12b = "2" if  b12b == "They did not have enough to sale and could sale  what would've been used for eating to get money"
replace b12b = "5" if  b12b == "sold food items"
replace b12b = "1" if  b12b == "termites were destroying crops"
replace b12b = "8" if  b12b == "reduce her ability to do farming"
replace b12b = "4" if  b12b == "was forced to use the available food items to support burial service"
replace b12b = "4" if  b12b == "money allocated for food cut down"
replace b12b = "1" if  b12b == "crops did not fruit and family lacked food"
replace b12b = "1" if  b12b == "Some food crop were rotten from the garden eg, cassava."
replace b12b = "4" if  b12b == "we used stored food to keep visitors who come at the period of his death"
replace b12b = "8" if  b12b == "we had little time for farm work as we always attending to the deceased"
replace b12b = "1" if  b12b == "beans, maize and other food which was inside the house got rotten."
replace b12b = "2" if  b12b == "had very little harvest"
replace b12b = "2" if  b12b == "weren't able to collect enough food for the family"
replace b12b = "2" if  b12b == "vegetables we planted dried off that lead to food scarcity"
replace b12b = "2" if  b12b == "food crops were destroyed and it became hard to get what to cook."
replace b12b = "5" if  b12b == "She sold her food she kept for future use."
replace b12b = "5" if  b12b == "They sold some of the crops they had stored in the house to buy things to replace the ones that got burnt."
replace b12b = "2" if  b12b == "reduced food availabity since they dried up"
replace b12b = "8" if  b12b == "reduced, lowered capacity"
replace b12b = "5" if  b12b == "sold food items"
replace b12b = "5" if  b12b == "sold rice to help"
replace b12b = "2" if  b12b == "reduce chances of eating meat"
replace b12b = "5" if  b12b == "sold groundnut"
replace b12b = "8" if  b12b == "had less labour for farming"
replace b12b = "2" if  b12b == "REDU6ON THE AVAILABILITY OF FOOD IN THE HOUSEHOLD"
replace b12b = "5" if  b12b == "sold food items to attain money for treatment"
replace b12b = "8" if  b12b == "LOW DIVERSITY OF FOOD SINCE MOST OF THE TIME THEY WERE IN HOSPITALS"
replace b12b = "2" if  b12b == "spend more on food items"
replace b12b = "2" if  b12b == "little food was obtained due to low harvest"
replace b12b = "2" if  b12b == "low harvest led to little food"
replace b12b = "2" if  b12b == "source of meat affected"
replace b12b = "1" if  b12b == "destroyed simsim hence very little harvest and  food decline in an household"
replace b12b = "1" if  b12b == "food crop was destroyed"
replace b12b = "8" if  b12b == "was very week to do farming"
replace b12b = "1" if  b12b == "food crops were destroyed by this shock"
replace b12b = "2" if  b12b == "less harvest"
replace b12b = "2" if  b12b == "little food due to low harvest"
replace b12b = "5" if  b12b == "lead to food scarcity as we had to sell otherfood stuff to buy drugs to treat animals"
replace b12b = "2" if  b12b == "little food"
replace b12b = "5" if  b12b == "husband sold food stuffs for drinking"
replace b12b = "5" if  b12b == "sold farm produce to get money"
replace b12b = "2" if  b12b == "had low yield"
replace b12b = "5" if  b12b == "sold crops"
replace b12b = "1" if  b12b == "simsim and beans were all covered by flood"
replace b12b = "8" if  b12b == "house hold labour was reduced"
replace b12b = "2" if  b12b == "food became scarce since the deceased was the main provider"
replace b12b = "2" if  b12b == "SCARCITY IN CASSAVA"
replace b12b = "2" if  b12b == "mostly food crop was destroyed by heavy rain anyou i have nothing cook at home."
replace b12b = "2" if  b12b == "crops was spoilt from garden and food becomes problem."
replace b12b = "5" if  b12b == "She sold her foodstuffs and yet could not work for more."
replace b12b = "2" if  b12b == "reduced food availabity since they were sold"
replace b12b = "2" if  b12b == "increased food demand"
replace b12b = "2" if  b12b == "low harvest led to little food"
replace b12b = "5" if  b12b == "They sold the available food they would have used in future to get money."
replace b12b = "5" if  b12b == "sold 12 sacs of sesame"
replace b12b = "4" if  b12b == "She used her beans kept in the house to cater for the mour.ners"
replace b12b = "2" if  b12b == "since crop were spoilt by this, you can't get enough food in the house."
replace b12b = "2" if  b12b == "had less food in the house"
replace b12b = "8" if  b12b == "didnt have energy to plant food crops , as well we sell of the little stored food to cater for hospital bills"
replace b12b = "2" if  b12b == "could not easily eat meat"
replace b12b = "5" if  b12b == "soldfood(beans)"
replace b12b = "5" if  b12b == "SOLD BEANS FOR TREATMENT"
replace b12b = "2" if  b12b == "food got destroyed from the garden leaving nothing to bring home"
replace b12b = "1" if  b12b == "no seed was there plant"
replace b12b = "2" if  b12b == "less food and just had to look for it from else where like market"
replace b12b = "2" if  b12b == "reduction in food consumption"
replace b12b = "5" if  b12b == "had sold the available food"
replace b12b = "1" if  b12b == "crops destroyed hence little harvest and food"
replace b12b = "1" if  b12b == "low crop production"
replace b12b = "5" if  b12b == "sold most of the fod items"
replace b12b = "1" if  b12b == "All the crops from the garden was spoilt by this and it became hard to find."

destring b12b,replace
#delimit ;
label define b12b
1 "Lost crops in the garden"
2 "Reduced food available for the family"
3 "Hindered market access by making roads impassable"
4 "Icreases household expenditure"
5 "Sold food that was meant to be eaten"
6 "Lost household assets"
7 "Death of livestock"
8 "Weakened the farmer to work on the farm"

;
#delimit cr
la values b12b b12b
save "Module B",replace

replace b13b = "1" if  b13b == "lack of water and pasture for goat"
replace b13b = "2" if  b13b == "used animals for burial traditional ceremonies"
replace b13b = "3" if  b13b == "1 goat died  due to too much rain"
replace b13b = "3" if  b13b == "It was killing the young animals and birds at home."
replace b13b = "3" if  b13b == "The young livestock dying eg chickens and culfe."
replace b13b = "1" if  b13b == "The grass for livestock dried up  they had nothing to eat."
replace b13b = "4" if  b13b == "body weight loss making them very weak"
replace b13b = "4" if  b13b == "Extreme rain made her young goats weak."
replace b13b = "1" if  b13b == "my livestock lack suffered from shortage of water and fresh pastures"
replace b13b = "3" if  b13b == "all my pigs died"
replace b13b = "5" if  b13b == "sold 3 chicken"
replace b13b = "1" if  b13b == "There was no  enough peanut to sale and buy more pigs and goats."
replace b13b = "3" if  b13b == "rampant disease killed animal and chick died of rain"
replace b13b = "4" if  b13b == "poor livestock growth"
replace b13b = "4" if  b13b == "She slaughtered two goats in the process of burial."
replace b13b = "1" if  b13b == "animal feeds and water source became scarce"
replace b13b = "3" if  b13b == "Some animals even died."
replace b13b = "3" if  b13b == "Other animals were dying due to much sunshine."
replace b13b = "2" if  b13b == "sent to inlaws"
replace b13b = "6" if  b13b == "others were stolen since I was in the hospital."
replace b13b = "1" if  b13b == "animals feeds dried off and water for drinking was scarce"
replace b13b = "7" if  b13b == "Sometimes you are forced to either killed sell your animals because it is destroying someone's crops"
replace b13b = "5" if  b13b == "sold livestock to cope up with the shock"
replace b13b = "5" if  b13b == "livestock  were sold for food"
replace b13b = "7" if  b13b == "reduction in livestock numbers"
replace b13b = "3" if  b13b == "all animals died"
replace b13b = "3" if  b13b == "Others were dying because of much rainfall."
replace b13b = "4" if  b13b == "unhealthy due to poor feeding"
replace b13b = "3" if  b13b == "many died"
replace b13b = "3" if  b13b == "reduction in thier numbers by dieing"
replace b13b = "3" if  b13b == "Very many young animals died due to much coldness."
replace b13b = "5" if  b13b == "sold some goats"
replace b13b = "2" if  b13b == "livestocks were slaughtered for her funeral rituals"
replace b13b = "3" if  b13b == "animals died in large numbers"
replace b13b = "3" if  b13b == "Sometimes it brings out break of animals or birds diseases."
replace b13b = "3" if  b13b == "some goats died due to too much coldness"
replace b13b = "3" if  b13b == "animals were sick"
replace b13b = "4" if  b13b == "unhealthy grow due to poor feeding"
replace b13b = "3" if  b13b == "some goats died and others lost weight"
replace b13b = "5" if  b13b == "sold some livestock to raise money for treatment"
replace b13b = "4" if  b13b == "It affected the goats because it used to be tied late after they were back."
replace b13b = "3" if  b13b == "They died all."
replace b13b = "7" if  b13b == "slaughtered goats"
replace b13b = "5" if  b13b == "sold two goats"
replace b13b = "5" if  b13b == "sold livestock to help with treatment"
replace b13b = "5" if  b13b == "sold goats"
replace b13b = "5" if  b13b == "sold goats for the burial"
replace b13b = "4" if  b13b == "theh depreciated due to the disease"
replace b13b = "5" if  b13b == "Sold livestocks"
replace b13b = "3" if  b13b == "Animals contracted diseases"
replace b13b = "5" if  b13b == "He sold goats  and chicken to raise money to meet some of the needs that  were pressent at that time."
replace b13b = "7" if  b13b == "They are sometimes killed by people when found in their garden."
replace b13b = "4" if  b13b == "Sometimes it too hot or cold for the animals and learning the young one affected always."
replace b13b = "3" if  b13b == "out break of animals diseases which more effective during dry period."
replace b13b = "5" if  b13b == "some livestock were sold to try cope up with the shock"
replace b13b = "1" if  b13b == "The goats did not have enough to eat"
replace b13b = "2" if  b13b == "Slaughtered animals to take care of the mourners"
replace b13b = "2" if  b13b == "slaughtered goats for funeral service"
replace b13b = "5" if  b13b == "sold some goats"
replace b13b = "3" if  b13b == "some died"
replace b13b = "5" if  b13b == "sold livestock"
replace b13b = "5" if  b13b == "Sold livestock (more goats)"
replace b13b = "3" if  b13b == "many died"
replace b13b = "." if  b13b == "none"
replace b13b = "5" if  b13b == "Sold livestocks to raise money for treatment"
replace b13b = "5" if  b13b == "sold goats also"
replace b13b = "7" if  b13b == "Others got lost because i was not able to look after them."
replace b13b = "1" if  b13b == "Feedings became difficult since food are not enough."
replace b13b = "1" if  b13b == "unhealthy growth due to poor feeding as aresult of grass drieing up"
replace b13b = "5" if  b13b == "sold goats"
replace b13b = "5" if  b13b == "sold goats to get food and income"
replace b13b = "5" if  b13b == "livestock were sold to cope up with da shock"
replace b13b = "." if  b13b == "o"
replace b13b = "3" if  b13b == "livestock died and the number reduced"
replace b13b = "5" if  b13b == "The livestock  was sold."
replace b13b = "7" if  b13b == "Others were stolen."
replace b13b = "1" if  b13b == "Goats and sheep got stomach problem due to dry grass that they were eating."
replace b13b = "3" if  b13b == "some died"
replace b13b = "5" if  b13b == "She also sold a goat to get some money for medical bills."
replace b13b = "5" if  b13b == "sold 2 goats"
replace b13b = "7" if  b13b == "They were killed by angry people."
replace b13b = "5" if  b13b == "sold livestock"
replace b13b = "5" if  b13b == "sold livestock"
replace b13b = "7" if  b13b == "regular sales reduced livestocks number"
replace b13b = "2" if  b13b == "Some animals like goats were slaughtered  for mourners to eat."
replace b13b = "7" if  b13b == "NUMBER OF ANIMALS WERE STOLEN"
replace b13b = "5" if  b13b == "SOLD LIVESTOCK TO RAISE SOME MONEY FOR TREATMENT"
replace b13b = "5" if  b13b == "sold livestock"
replace b13b = "5" if  b13b == "sold goats"
replace b13b = "5" if  b13b == "sold livestock to pay treatment"
replace b13b = "3" if  b13b == "2 goats died"
replace b13b = "1" if  b13b == "There was no enough grassfor the livestock to eat."
replace b13b = "7" if  b13b == "reduced on the number of livestocks( used some for traditional services)"
replace b13b = "3" if  b13b == "Some animals died due to much coldness."
replace b13b = "2" if  b13b == "my livestock were sold and others slaughtered to perform traditional funeral rites"
replace b13b = "5" if  b13b == "some were sold for income for the family"
replace b13b = "5" if  b13b == "livestock were sold to take care of family basic needs"
replace b13b = "3" if  b13b == "animal's diseases killed very many animals due to inadequate feeds,  many lost weights and were  so weak"
replace b13b = "3" if  b13b == "Some chicken got burnt inthe fire."
replace b13b = "3" if  b13b == "pigs and goat died due to diseases"
replace b13b = "5" if  b13b == "SOLD GOATS TO RAISE MONEY FOR TREATMENT"
replace b13b = "1" if  b13b == "little water to feed animals"
replace b13b = "7" if  b13b == "stolen"
replace b13b = "1" if  b13b == "it became hard to give them food"
replace b13b = "5" if  b13b == "sold animals to raise money"
replace b13b = "3" if  b13b == "many livestock died"
replace b13b = "3" if  b13b == "husband neglected his responsibility of looking after livestock and all died of diseases"
replace b13b = "5" if  b13b == "sold livestocks to buy food"
replace b13b = "5" if  b13b == "reduced since they were sold"
replace b13b = "5" if  b13b == "some livestocks were sold off cheaply"
replace b13b = "1" if  b13b == "little time eat freely due heavy rain."
replace b13b = "1" if  b13b == "it was hard to get wet grasses for animals to eat."
replace b13b = "5" if  b13b == "sold 1 cattle"
replace b13b = "2" if  b13b == "They killed a goat for mourners to eat."
replace b13b = "1" if  b13b == "fewer green grasses for our animals eat"
replace b13b = "1" if  b13b == "livestock died of hunger as we didnt hve enough energy to graze them"
replace b13b = "7" if  b13b == "reduce their numbers"
replace b13b = "5" if  b13b == "sold 2 sheep"
replace b13b = "4" if  b13b == "bad health due to little feeding"
replace b13b = "5" if  b13b == "sold off the livestocks"
replace b13b = "4" if  b13b == "out break of animals diseases as a result to much rain."

destring b13b,replace
#delimit ;
label define b013b
1 "Lack of animal feeds and water "
2 "Animals were used for traditional ceremonies"
3 "Death of animals"
4 "It affected livestock productivity"
5 "Sold the livestock"
6 "Livestock were stolen"
7 "Forced to kill the animals to maintain peace with neighbours"
;

#delimit cr
la values b13b b013b
save "Module B",replace


replace b14b = "1" if  b14b == "drying pasture"
replace b14b = "1" if  b14b == "It was hard to find what to give them to feed on."
replace b14b = "1" if  b14b == "The grass dried up."
replace b14b = "1" if  b14b == "feeds dried off making it very difficult for them to eat the normal quality and quantity"
replace b14b = "1" if  b14b == "feeds dried off with poor regeneration"
replace b14b = "1" if  b14b == "pasture dried"
replace b14b = "1" if  b14b == "long drought dried pasture"
replace b14b = "1" if  b14b == "Grasses dried up and it was difficult to get green pastures."
replace b14b = "1" if  b14b == "There  was limited feed to give them."
replace b14b = "1" if  b14b == "local postures dried off and this affected both qualify and availability of the animal feeds"
replace b14b = "1" if  b14b == "grazing  land had dried up"
replace b14b = "1" if  b14b == "grasses were dried up for animals"
replace b14b = "1" if  b14b == "Grasses was one time dried that you can not get where to tie them eg goats and cattle."
replace b14b = "1" if  b14b == "grasses dried up"
replace b14b = "1" if  b14b == "It was killing the young ones especially chickens and piglets."
replace b14b = "1" if  b14b == "Other feeds got rotten and poured away."
replace b14b = "1" if  b14b == "the feeds were conterminated with infection agents"
replace b14b = "1" if  b14b == "livestock feeds dried up"
replace b14b = "1" if  b14b == "grasses dried up"
replace b14b = "1" if  b14b == "pasture dried"
replace b14b = "1" if  b14b == "animals were not well fed"
replace b14b = "1" if  b14b == "have very small grazing field"
replace b14b = "1" if  b14b == "Grass were dried up"
replace b14b = "1" if  b14b == "Livestock feeds dried up"
replace b14b = "1" if  b14b == "No enough space to tie them eg goats."
replace b14b = "1" if  b14b == "Sometimes grasses dried out it becomes difficult to find out what animals can feed on."
replace b14b = "1" if  b14b == "grasses were all dried that make it difficult for animals to eat eg for goats."
replace b14b = "1" if  b14b == "The  grass dried up."
replace b14b = "1" if  b14b == "Nothing is there to give them."
replace b14b = "1" if  b14b == "grasses dried up"
replace b14b = "1" if  b14b == "animal feeds (grass) had dried up"
replace b14b = "1" if  b14b == "feeds were dried for domestic animals"
replace b14b = "1" if  b14b == "Livestock feeds dried up"
replace b14b = "1" if  b14b == "The sun dried  the grass that  the goats fed on."
replace b14b = "1" if  b14b == "taken by force."
replace b14b = "1" if  b14b == "pasture dried up"
replace b14b = "1" if  b14b == "The grass dried up."
replace b14b = "1" if  b14b == "Some feed got rotten as a result of too much rain."
replace b14b = "1" if  b14b == "pastures dried off completely and was very difficult to acess alternative feeds"
replace b14b = "1" if  b14b == "reduced livestock feed"
replace b14b = "1" if  b14b == "dried grasses for animal to feed"
replace b14b = "1" if  b14b == "grasses became hard that animals can't eat"
replace b14b = "1" if  b14b == "grasses dried up"
replace b14b = "1" if  b14b == "husband failed to secured for livestocks feed expecially during dry seasons when grasses rebeing burned"
replace b14b = "1" if  b14b == "it became hard to get feed"
replace b14b = "1" if  b14b == "grasses dried up and later got burnt leaving no feeds."
replace b14b = "1" if  b14b == "They lost some part of their grazing area which they used when the dad was alive."
replace b14b = "1" if  b14b == "getting feed was hard now."
replace b14b = "1" if  b14b == "grass dried"
replace b14b = "1" if  b14b == "feedsdried up"
replace b14b = "1" if  b14b == "few animal feeds"
replace b14b = "1" if  b14b == "Green grasses were not there for animals to eat."

destring b14b,replace
#delimit ;
label define b143b
1 "Lack of animal feeds and water "
;

#delimit cr
la values b14b b14b
save "Module B",replace

replace b17 = "1" if  b17 == "FAMINE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "2" if  b17 == "STRONG WINDS"
replace b17 = "10" if  b17 == "DEATH OF AN HOUSEHOLD MEMBER"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "EXCESSIVE RAIN FALL"
replace b17 = "5" if  b17 == "HEAVY RAIN SHOWER"
replace b17 = "6" if  b17 == "HUMAN SICKNESS"
replace b17 = "4" if  b17 == "LOW CROP YIELD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "HUMAN SICKNESS"
replace b17 = "5" if  b17 == "TOO MUCH RAIN"
replace b17 = "10" if  b17 == "DEATH OF A RELATIVE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "7" if  b17 == "CROP DISEASE"
replace b17 = "6" if  b17 == "DISEASES ON HUMAN"
replace b17 = "11" if  b17 == "LAND DISPUTE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "8" if  b17 == "FOOD THEFT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "12" if  b17 == "SNAKE BITE"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "9" if  b17 == "TOO MUCH SUNSHINE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "14" if  b17 == "HOUSE BURNT"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "15" if  b17 == "LOST OF MONEY"
replace b17 = "7" if  b17 == "CROP PEST AND DISEASES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "TOO MUCH  RAINFALL"
replace b17 = "5" if  b17 == "DISEASES ON HUMAN"
replace b17 = "." if  b17 == "NONE"
replace b17 = "16" if  b17 == "ANIMAL DISEASES"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "HUMAN SICKNESS"
replace b17 = "6" if  b17 == "HUMAN DEATH"
replace b17 = "6" if  b17 == "DISEASES ON HUMAN"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "ACCIDENT OF HOUSEHOLD MEMBER"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "MISCARRIAGE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "HEAVY RAIN STORM"
replace b17 = "6" if  b17 == "HUMAN SICKNES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "11" if  b17 == "SHORTAGE LAND"
replace b17 = "6" if  b17 == "LOST OF LIFE"
replace b17 = "7" if  b17 == "PESTS AND DISEASES ON CROPS"
replace b17 = "." if  b17 == "NONE"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "16" if  b17 == "ANIMAL DISEASES"
replace b17 = "7" if  b17 == "PESTS AND DISEASES ON CROPS"
replace b17 = "7" if  b17 == "DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "DEATH OF A LOVED ONE"
replace b17 = "16" if  b17 == "POULTRY DISEASE"
replace b17 = "6" if  b17 == "SICKNESS OF HOUSEHOLD MEMBERS"
replace b17 = "6" if  b17 == "DAUGHTER'S SICKNESS"
replace b17 = "6" if  b17 == "HUMAN SICKNESS"
replace b17 = "5" if  b17 == "HEAVY RAIN"
replace b17 = "." if  b17 == "NONE"
replace b17 = "" if  b17 == "LIVESTOCK"
replace b17 = "6" if  b17 == "DEATH OF THE BROTHER"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "10" if  b17 == "DEATH OF LIVESTOCK"
replace b17 = "6" if  b17 == "HUMAN DISEASE ATTACK"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "TOO MUCH RAINFALL"
replace b17 = "6" if  b17 == "HUMAN SICKNESS"
replace b17 = "11" if  b17 == "SHORTAGE OF LAND"
replace b17 = "11" if  b17 == "LAND WRANGLE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "11" if  b17 == "LAND RWANGLE"
replace b17 = "16" if  b17 == "LIVESTOCK DISEASE"
replace b17 = "6" if  b17 == "DEATH OF RELATIVE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "16" if  b17 == "ANIMAL DISEASES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "HUMAN SICKNESS"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "DEATH OF A MEMBER"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "17" if  b17 == "CROPS FAILURE"
replace b17 = "6" if  b17 == "HUMAN DISEASE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "16" if  b17 == "ANIMAL DISEASES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "3" if  b17 == "UNEXPECTED DRYSPELL"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "18" if  b17 == "UNBALANCED SEASONAL CHANGES"
replace b17 = "19" if  b17 == "FAMILY DIVORSE"
replace b17 = "6" if  b17 == "DEATH OF A MEMBER"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "LOSS OF LIFE"
replace b17 = "10" if  b17 == "DEATH OF LIVESTOCK"
replace b17 = "7" if  b17 == "PEST AND CROP DISEASES"
replace b17 = "13" if  b17 == "FLOODS"
replace b17 = "10" if  b17 == "DEATH OF LIVESTOCK"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "19" if  b17 == "DIVORCE"
replace b17 = "16" if  b17 == "LIVESTOCK DISEASES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "11" if  b17 == "LAND RWANGLE."
replace b17 = "12" if  b17 == "WILD ANIMALS"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "SICKNESS OF CHILD"
replace b17 = "6" if  b17 == "HUMAN DISEASE ATTACKS"
replace b17 = "18" if  b17 == "UNEXPECTED DRYSPELL"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "TOO MUCH RAIN"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "TOO MUCH RAIN"
replace b17 = "6" if  b17 == "SICKNESS OF A HOUSEHOLD MEMBER"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "20" if  b17 == "IMPRISONMENT"
replace b17 = "6" if  b17 == "LOSS OF LIFE"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "16" if  b17 == "ANIMAL DISEASES"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "DEATH OF HER AUNTY"
replace b17 = "6" if  b17 == "DEATH OF HOUSEHOLD MEMBER"
replace b17 = "13" if  b17 == "FLOODS"
replace b17 = "12" if  b17 == "WILD ANIMALS"
replace b17 = "6" if  b17 == "DEATH OF GRANDMOTHER."
replace b17 = "17" if  b17 == "PEANUT FAILURE"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "17" if  b17 == "CROP FAILURE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "3" if  b17 == "PROLONGED DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "DEATH OF MEMBER"
replace b17 = "." if  b17 == "NONE"
replace b17 = "7" if  b17 == "PESTS AND DISEASES"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "3" if  b17 == "DRAUGHT"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "6" if  b17 == "THE DEATH OF HER GRAND FATHER"
replace b17 = "6" if  b17 == "DEATH"
replace b17 = "19" if  b17 == "DOMESTIC VIOLENT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "SICKNESS OF HOUSEHOLD MEMBER"
replace b17 = "6" if  b17 == "DEATH OF MOTHER."
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "12" if  b17 == "ELEPHANT INVASION"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "17" if  b17 == "CROPS FAILURE"
replace b17 = "6" if  b17 == "DEATH"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "19" if  b17 == "DOMESTIC CONFLICT."
replace b17 = "6" if  b17 == "DEATH"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "17" if  b17 == "CRO0S FAILURE"
replace b17 = "12" if  b17 == "WILD ANIMALS (ELEPHANTS)"
replace b17 = "19" if  b17 == "DIVORCE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "7" if  b17 == "PESTS AND DISEASES IN CROPS"
replace b17 = "6" if  b17 == "DEATH OF RALATIVES"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "6" if  b17 == "SICKNESS OF MEMBER"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "21" if  b17 == "SCHOOL FEES"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "SICKNESS OF THE HOUSEHOLD HEAD"
replace b17 = "6" if  b17 == "HUMAN RESOURCE TRANSFER"
replace b17 = "6" if  b17 == "HUMAN SCKNESS"
replace b17 = "." if  b17 == "NONE"
replace b17 = "7" if  b17 == "CROP DISEASE"
replace b17 = "16" if  b17 == "ANIMAL DISEASE"
replace b17 = "6" if  b17 == "SICKNESS OF FAMILY"
replace b17 = "16" if  b17 == "ANIMALS DISEASES"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "16" if  b17 == "PEST AND ANIMALS"
replace b17 = "16" if  b17 == "ANIMAL DISEASES"
replace b17 = "13" if  b17 == "FLOODS"
replace b17 = "13" if  b17 == "FLOODS"
replace b17 = "7" if  b17 == "PEST"
replace b17 = "15" if  b17 == "MONEY LOSS IN SACCO"
replace b17 = "6" if  b17 == "DEATH OF THEIR GRANDMOTHER"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "6" if  b17 == "DEATH"
replace b17 = "." if  b17 == "NONE"
replace b17 = "13" if  b17 == "FLOOD"
replace b17 = "." if  b17 == "NONE"
replace b17 = "19" if  b17 == "CONFLICT"
replace b17 = "6" if  b17 == "FINERAL"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "6" if  b17 == "DEATH"
replace b17 = "6" if  b17 == "FINERAL"
replace b17 = "2" if  b17 == "STRONG WIND"
replace b17 = "." if  b17 == "NONE"
replace b17 = "12" if  b17 == "WILD ANIMALS"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "12" if  b17 == "STRAY ANIMALS"
replace b17 = "7" if  b17 == "PEST AND DESEASES"
replace b17 = "8" if  b17 == "THEFT"
replace b17 = "7" if  b17 == "PEST AND DESEASES"
replace b17 = "6" if  b17 == "SICKNESS"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "6" if  b17 == "DEATH"
replace b17 = "6" if  b17 == "HUMAN DISEASE ATTACK"
replace b17 = "6" if  b17 == "ILLNESS"
replace b17 = "." if  b17 == "NONE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "7" if  b17 == "PEST"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "DEATH OF CHICKEN"
replace b17 = "5" if  b17 == "STORM"
replace b17 = "7" if  b17 == "CROP DISEASE ATTACK"
replace b17 = "." if  b17 == "NONE"
replace b17 = "3" if  b17 == "DROUGHT"
replace b17 = "." if  b17 == "NONE"
replace b17 = "6" if  b17 == "ROAD ACCIDENT"
replace b17 = "14" if  b17 == "ROOF BLOWN"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "6" if  b17 == "DEATH OF A RELATIVE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "EXCESS RAIN"
replace b17 = "7" if  b17 == "MAIZE DISEASE ATTACK"
replace b17 = "7" if  b17 == "PESTS AND DISEASES"
replace b17 = "6" if  b17 == "DISEASES"
replace b17 = "6" if  b17 == "DEATH"
replace b17 = "11" if  b17 == "SORTAGE OF LAND"
replace b17 = "21" if  b17 == "SCHOOL FEES"
replace b17 = "6" if  b17 == "MADNESS"
replace b17 = "." if  b17 == "NONE"
replace b17 = "5" if  b17 == "HAILSTORM"
replace b17 = "22" if  b17 == "WILD FIRE"
replace b17 = "." if  b17 == "NONE"
replace b17 = "7" if  b17 == "PEST AND ANIMALS DISEASE"


destring b17,replace
#delimit ;
label define b17
1 "Famine"
2 "Strong winds"
3 "Drought"
4 "Low crop yield"
5 "Excessive Rainfall"
6 "Human Sickness and Death"
7 "Crop diseases and pests"
8 "Food theft"
9 "Too much sunshine"
11 "Death of livestock"
12 "Land disputes"
13 "Attack by wild animals"
14 "Flood"
15 "Damage to the main house"
16 "Livestock diseases"
17 "Crop failure"
18 "Unpredictable seasonal changes"
19 "Family disputes"
20 "Imprisonment"
21 "Increased cost of living"
22 "Wildfire"
;
#delimit cr

la values b17 b17
save "Module B",replace

replace b19b = "1" if  b19b == "alot of money were spent on buying food"
replace b19b = "2" if  b19b == "crops were destroyed hence reduced income expectations"
replace b19b = "1" if  b19b == "starting to take care of the patient until funeral service, money was used all"
replace b19b = "4" if  b19b == "crop failed"
replace b19b = "3" if  b19b == "I was very weak and couldn't do anything to get money."
replace b19b = "1" if  b19b == "I spent a lot  in the hospital"
replace b19b = "4" if  b19b == "Some of his crops are near the swamp so the excess rainfall just damaged instead."
replace b19b = "4" if  b19b == "crops didnt fruit especially semsame and its very hard to work during periods of heavy rain"
replace b19b = "3" if  b19b == "She could not go out and do anything that is economical."
replace b19b = "1" if  b19b == "used up savings of the household"
replace b19b = "3" if  b19b == "didnt plant alot for sale because I was very sick for long"
replace b19b = "1" if  b19b == "beans did not perform well yet they invested money in farming"
replace b19b = "1" if  b19b == "they wasted money to take care of mourners"
replace b19b = "4" if  b19b == "reduced productivity"
replace b19b = "1" if  b19b == "SPENT MOST TIME IN HOSPITAL AND NO OTHER ECONOMIC ACTIVITY WAS DONE"
replace b19b = "4" if  b19b == "they left all the crops un harvested after being chased from the land"
replace b19b = "5" if  b19b == "The food that was to be sold was carried away by a thief so it did affect the income"
replace b19b = "3" if  b19b == "She was not able to do her daily work for survival."
replace b19b = "4" if  b19b == "cotton, cassava and pigeon pea yield were affected"
replace b19b = "4" if  b19b == "They never harvested what they planted hence affecting their income."
replace b19b = "4" if  b19b == "stock burnt"
replace b19b = "4" if  b19b == "Most plants we  planted were spoilt because there was water everywhere in the garden."
replace b19b = "5" if  b19b == "There was no way could continue doing  business because i lost all te money i had."
replace b19b = "1" if  b19b == "i spent money in buying pesticides and also i didn't get enough money from the sale of agricultural product due to poor harvest"
replace b19b = "1" if  b19b == "alot of money was spent on treatment and little time was there to do other economic activities"
replace b19b = "6" if  b19b == "animals to be sold were dying"
replace b19b = "1" if  b19b == "reduced on the income level since alot of money was spent on treatment"
replace b19b = "1" if  b19b == "alot of money was spent on medical treatment"
replace b19b = "1" if  b19b == "spent money on burial expenses"
replace b19b = "1" if  b19b == "reduced income since most of the money was spent on treatment"
replace b19b = "1" if  b19b == "spent money for treatment"
replace b19b = "1" if  b19b == "spent household income on treatment"
replace b19b = "4" if  b19b == "destroyed crops which were sources of income"
replace b19b = "3" if  b19b == "there was reduction in labour hence low production and income"
replace b19b = "1" if  b19b == "I used all  the money i had to solve this problem."
replace b19b = "1" if  b19b == "we spent a lot in the hospital"
replace b19b = "2" if  b19b == "reduced income expectations since most crops are destroyed by pest"
replace b19b = "2" if  b19b == "reduced on the income expectations of the family"
replace b19b = "2" if  b19b == "income from animal sale greatly reduced"
replace b19b = "4" if  b19b == "crops dried up leading to poor harvest and low sells hence low income"
replace b19b = "4" if  b19b == "cereals yield reduce drastically"
replace b19b = "1" if  b19b == "spent money during funeral service"
replace b19b = "7" if  b19b == "birds which could fetch money died"
replace b19b = "1" if  b19b == "paying for operations in the hospital plus other hospital bills"
replace b19b = "1" if  b19b == "we are spending alot on her for medical treatments this has compromised our savings"
replace b19b = "2" if  b19b == "There is less earning as man power to work for the money is sick"
replace b19b = "2" if  b19b == "we harvested little semsame yet its our source of earning"
replace b19b = "7" if  b19b == "she lost her pigs which she would have sold and got money."
replace b19b = "1" if  b19b == "i spent too much time with visitors who came for the burial instead of looking after my livestocks which gives me income"
replace b19b = "4" if  b19b == "some crops got stunted hence low yield leading to low income"
replace b19b = "7" if  b19b == "They lost the goats they used to sell and get money."
replace b19b = "1" if  b19b == "spent alot in the hospital"
replace b19b = "2" if  b19b == "The rain made her cassava plants to rot in the garden and affected her income since there was nothing to sale."
replace b19b = "3" if  b19b == "She would not work in order  to get something to sale."
replace b19b = "8" if  b19b == "It hard because I had no where to dig and plant crops."
replace b19b = "8" if  b19b == "shortage of land to caltivate crops leading to limited source of income"
replace b19b = "1" if  b19b == "We spent a lot of money in court of law."
replace b19b = "7" if  b19b == "instead of selling a livestock then getting money, it just died and we did not earn"
replace b19b = "1" if  b19b == "contributions for funeral service"
replace b19b = "1" if  b19b == "money was spent for treating the animals"
replace b19b = "1" if  b19b == "money was spent on treatment"
replace b19b = "1" if  b19b == "organising for funeral service and hospital bills"
replace b19b = "4" if  b19b == "There was nothing much to sale from the harvest."
replace b19b = "1" if  b19b == "Used up savings for hospital bills"
replace b19b = "2" if  b19b == "low income in the family due to low yields"
replace b19b = "4" if  b19b == "the planted crops did perform well and less income as a result"
replace b19b = "2" if  b19b == "low source of income since crops were washed by floods"
replace b19b = "1" if  b19b == "money was spent in the hospital reducing the level of income for the household"
replace b19b = "1" if  b19b == "spent money to  uy medicines hence low income"
replace b19b = "1" if  b19b == "spent a lot of money in farming but got little income because the yield was low"
replace b19b = "2" if  b19b == "less income since little production was got"
replace b19b = "4" if  b19b == "crops planted got destroyed and little income is expected"
replace b19b = "4" if  b19b == "had crop loss"
replace b19b = "1" if  b19b == "reduced income for the family due to high medical bills"
replace b19b = "4" if  b19b == "Harvested little after spending alot in the farming"
replace b19b = "1" if  b19b == "Spent money looking for the wife"
replace b19b = "1" if  b19b == "taking of the patient until death plus funeral service took a lot of money"
replace b19b = "1" if  b19b == "spent income for burial arrangements"
replace b19b = "2" if  b19b == "There was no  any animal to sale and get money."
replace b19b = "4" if  b19b == "Crops are always destroyed and i little harvest than the expected amount."
replace b19b = "4" if  b19b == "Crops were destroyed and I had nothing to sell."
replace b19b = "2" if  b19b == "There was nothing to sale and earn."
replace b19b = "3" if  b19b == "It lower the level my farming."
replace b19b = "2" if  b19b == "Lossed a big investment"
replace b19b = "8" if  b19b == "I was stopped from using the land i thought it was mine and so i didn't dig this year and getting money was difficult."
replace b19b = "4" if  b19b == "crops are always destroyed by wild animals hence low income"
replace b19b = "3" if  b19b == "Less labour was invested on income generation"
replace b19b = "1" if  b19b == "Spent money on treatment"
replace b19b = "4" if  b19b == "Crops yielded poorly"
replace b19b = "4" if  b19b == "it destroyed most of the crops expecially tomatoe planted"
replace b19b = "2" if  b19b == "low harvest led to no sells hence low income"
replace b19b = "1" if  b19b == "paying hospital bills using saved money"
replace b19b = "2" if  b19b == "money wasted in production was not recovered"
replace b19b = "1" if  b19b == "spent money in prison"
replace b19b = "1" if  b19b == "reduced (spent on burial and Inherited more responsibilities)"
replace b19b = "2" if  b19b == "crops were washed hence limited income for the family"
replace b19b = "1" if  b19b == "alot of money was spent on treatment leading to low income"
replace b19b = "1" if  b19b == "She sold what she had in the house to go for the burial."
replace b19b = "1" if  b19b == "collecting the body fom prison and taking care of all funeral services"
replace b19b = "1" if  b19b == "I used alot of money for digging and didn't get good harvest to recover."
replace b19b = "4" if  b19b == "If the crops are destroyed you have nothing to sell to get money"
replace b19b = "1" if  b19b == "The money that was available was used for funeral."
replace b19b = "1" if  b19b == "That is what they had planned to sale and get money and it failed in the soil."
replace b19b = "4" if  b19b == "Crops were destroyed and it became hard to find what to sell to get money."
replace b19b = "2" if  b19b == "They depend on the crops for money  but had nothing to sale."
replace b19b = "4" if  b19b == "had crop loss; no surplus to sell"
replace b19b = "1" if  b19b == "used money and killed livestock during funeral service"
replace b19b = "2" if  b19b == "crops were destroyed leading to limited source of income"
replace b19b = "2" if  b19b == "limited income for the household"
replace b19b = "4" if  b19b == "Crops that could have brought income dried up"
replace b19b = "2" if  b19b == "limited source of income for the community"
replace b19b = "1" if  b19b == "She had some money that she had in saving and she spent some of it in the burial process."
replace b19b = "1" if  b19b == "money was spent to take care of the mouners hence reduced income for the household"
replace b19b = "1" if  b19b == "no proper budget because everyone does things alone."
replace b19b = "1" if  b19b == "buying drugs because government hospitals do not give all drugs"
replace b19b = "1" if  b19b == "They spent alot of money in the burial process."
replace b19b = "2" if  b19b == "low source of income since crops were washed by rain"
replace b19b = "4" if  b19b == "Cash crops was affected and I had nothing to sell to get money."
replace b19b = "4" if  b19b == "The elephant ate their crops and left them with little to sale."
replace b19b = "4" if  b19b == "She did not have  what  to sale since what  she  planted failed."
replace b19b = "1" if  b19b == "money was spent during mourning"
replace b19b = "4" if  b19b == "crops wilted and they did not yield well resulting to low income"
replace b19b = "3" if  b19b == "I was left alone and have spent a lot of money in weeding."
replace b19b = "1" if  b19b == "alot of money spent on taking care of the mouners"
replace b19b = "2" if  b19b == "The crops that was to be sold failed to in the garden hence remaining with nothing to sale."
replace b19b = "4" if  b19b == "destroyed most of the crops in the garden"
replace b19b = "3" if  b19b == "It became hard to work alone and reduced on the level of farming."
replace b19b = "2" if  b19b == "REDUCED ON THE INCOME EXPECTATIONS IN THE HOUSEHOLD"
replace b19b = "1" if  b19b == "CONTRIBUTED MONEY TO TAKE CARE OF THE MOURNERS"
replace b19b = "2" if  b19b == "the crops did not yield well hence limited income"
replace b19b = "1" if  b19b == "sued savings"
replace b19b = "1" if  b19b == "paying fees using the  money saved"
replace b19b = "1" if  b19b == "travelling to the hospital and paying bills"
replace b19b = "3" if  b19b == "He was not together with the wife and was not able to help her grow enough  crops for food and for sale."
replace b19b = "1" if  b19b == "They had to spend the little they had for treatment."
replace b19b = "1" if  b19b == "spend alot of money buying maize"
replace b19b = "2" if  b19b == "left with few livestock that could not be sold"
replace b19b = "1" if  b19b == "increased expenditure on health"
replace b19b = "1" if  b19b == "spent alot on animal treatment"
replace b19b = "3" if  b19b == "reduced level of faming"
replace b19b = "4" if  b19b == "planted crops dried off and little harvest was realised"
replace b19b = "4" if  b19b == "what is collected from the garden was smaller than my budget."
replace b19b = "7" if  b19b == "many live stock died yet they are one of the major income sources"
replace b19b = "4" if  b19b == "food crop especially semsame which has good selling price never fruited"
replace b19b = "2" if  b19b == "resulted to very little harvest so we couldn't sell the little to raise money"
replace b19b = "2" if  b19b == "reduced level harvest"
replace b19b = "1" if  b19b == "She lost saving she had to help her in other programs."
replace b19b = "1" if  b19b == "The money they had was used to carter for people."
replace b19b = "2" if  b19b == "reduced household income capacity"
replace b19b = "4" if  b19b == "crops meant for sale dried up"
replace b19b = "1" if  b19b == "wasted money on weeding"
replace b19b = "1" if  b19b == "funeral services"
replace b19b = "4" if  b19b == "CROPS WERE WASHED AWAY NOTHING WAS HARVESED"
replace b19b = "1" if  b19b == "MONEY WAS SPENT TO TRY AND SOLVE THE CONFLICTS"
replace b19b = "1" if  b19b == "used hh asset which would have been sold"
replace b19b = "2" if  b19b == "no sell of crops due to low harvest"
replace b19b = "1" if  b19b == "spent money on burial expenses"
replace b19b = "1" if  b19b == "used available livestocks during fineral"
replace b19b = "4" if  b19b == "few yield harvested and sold little"
replace b19b = "3" if  b19b == "I was weak and can't do any work to get money."
replace b19b = "4" if  b19b == "poor quality fruits for sale"
replace b19b = "4" if  b19b == "crops totally destroyed hence no output to sell"
replace b19b = "2" if  b19b == "affected our earning from live stock since may were stolen"
replace b19b = "1" if  b19b == "spent money to buy insecticides"
replace b19b = "3" if  b19b == "i didn't have enough energy to engage in griculture and other activities to raise incomes"
replace b19b = "2" if  b19b == "low produce hence low income"
replace b19b = "1" if  b19b == "spend alot on burial service"
replace b19b = "2" if  b19b == "reduced capacity to earn income for the house"
replace b19b = "2" if  b19b == "could not continue with bussines"
replace b19b = "1" if  b19b == "SPENT ALOT ON TREATMENT"
replace b19b = "4" if  b19b == "crops  were destroyed and you i had nothing to sell to get money."
replace b19b = "7" if  b19b == "She lost the chicken and had nothing to sale and get money."
replace b19b = "2" if  b19b == "reduced income, spent on spraying crop"
replace b19b = "4" if  b19b == "simsim was destroyed completly from the garden and never harvested hence no output to sell leading to low income"
replace b19b = "1" if  b19b == "paying hospital bills"
replace b19b = "1" if  b19b == "She had to pick from her saving to buy grass to roof the house again."
replace b19b = "3" if  b19b == "I was not able to do any work to get money"
replace b19b = "1" if  b19b == "hospital bills and funeral services"
replace b19b = "2" if  b19b == "fetch few yields for sale"
replace b19b = "1" if  b19b == "spent income for treating crops"
replace b19b = "1" if  b19b == "BOUGH PESTICIDES FOR SPRAYING"
replace b19b = "1" if  b19b == "LOST OF INCOME IN TREATMENT"
replace b19b = "3" if  b19b == "reduced man labour"
replace b19b = "3" if  b19b == "decreased the levels of faming"
replace b19b = "1" if  b19b == "the money that you are to save you use it for school fees"
replace b19b = "3" if  b19b == "labour reduced for production to increase income"
replace b19b = "4" if  b19b == "crops were burnt hence no food to sell"
replace b19b = "7" if  b19b == "A lot of animals died and taken freely."


destring b19b,replace
#delimit ;
label define b19b
1 "Increased household expenditure"
2 "Reduced household income"
3 "Reduced ability of the farmer to provide farm labour"
4 "Damaged crops"
5 "Food was stolen by neighbours"
6 "Sold Animals"
7 "Death of animals"
8 "There was no land for cultivation"
;
#delimit cr

la values b19b b19b
save "Module B",replace

replace b20b = "1" if  b20b == "sold bicycle  to raise money"
replace b20b = "1" if  b20b == "sold assets e.g. bucket"
replace b20b = "1" if  b20b == "all house assets were left since they were chased from the land at night"
replace b20b = "2" if  b20b == "got burnt"
replace b20b = "1" if  b20b == "I had to sell some eg bicycle to get money."
replace b20b = "1" if  b20b == "reduced on income level since alot was spent on treatment"
replace b20b = "1" if  b20b == "sold part of land to pay medical expenses"
replace b20b = "1" if  b20b == "sold assets e.g solar, music systems"
replace b20b = "1" if  b20b == "I was forced to sell others for buying food."
replace b20b = "3" if  b20b == "we were forced to divide."
replace b20b = "1" if  b20b == "I was forced to sell others to help me get money for court."
replace b20b = "1" if  b20b == "sold bicycle to raise money"
replace b20b = "1" if  b20b == "Sold trees from the plantation"
replace b20b = "1" if  b20b == "sold land"
replace b20b = "1" if  b20b == "We were forced to divide the assets."
replace b20b = "3" if  b20b == "sold land"
replace b20b = "1" if  b20b == "They sold a bicycle to get money for treatment."
replace b20b = "1" if  b20b == "used assets"
replace b20b = "1" if  b20b == "use assets"
replace b20b = "4" if  b20b == "destroyed crops from the garden"
replace b20b = "1" if  b20b == "we had to sell our assets to cater for my hospital bills"
replace b20b = "2" if  b20b == "she did not have a good shelter to keep her assets."
replace b20b = "1" if  b20b == "forced to sell assets"
replace b20b = "1" if  b20b == "sold land"


destring b20b,replace
#delimit ;
label define b20b
1 "Sold Assets"
2 "Lost Assets"
3 "Forced to share assets"
4 "Damaged crops"
;
#delimit cr

la values b20b b20b
save "Module B",replace


replace b21b = "1" if  b21b == "children were malnurished due to food shortage"
replace b21b = "1" if  b21b == "crops were destroyed leading to shortage of food in the household"
replace b21b = "1" if  b21b == "the food available some were used to feed mourners"
replace b21b = "1" if  b21b == "less harvest"
replace b21b = "1" if  b21b == "As i was sick, it became hard even to cook food or to get it."
replace b21b = "1" if  b21b == "I was weak and didn't plant enough foods crop."
replace b21b = "1" if  b21b == "He did not pick food from the since it died."
replace b21b = "1" if  b21b == "some crops eg cassava got rotter due to heavy rain"
replace b21b = "1" if  b21b == "there was food shortage at home"
replace b21b = "1" if  b21b == "most times i was on bed and  didnt plant food crops"
replace b21b = "1" if  b21b == "food became little due to low harvest"
replace b21b = "1" if  b21b == "used beans and other food items for taking care of mourners"
replace b21b = "1" if  b21b == "reduced since they were sold to cater for other needs"
replace b21b = "1" if  b21b == "LIMITED CALTIVATION OF CROPS WAS DONE LEADING TO SHORTAGE OF FOOD IN THE FAMILY"
replace b21b = "1" if  b21b == "they left unharvested crops and destroyed all the food they had in the house"
replace b21b = "1" if  b21b == "They depended on the food that was stolen so it affected their food availability."
replace b21b = "2" if  b21b == "She sold her beans to get treatment."
replace b21b = "1" if  b21b == "diminished yield of crop planted and low harvest"
replace b21b = "1" if  b21b == "There was no enough food to eat."
replace b21b = "1" if  b21b == "got burnt inside hous3"
replace b21b = "1" if  b21b == "Most of the food crops were destroyed because the rain was too much."
replace b21b = "1" if  b21b == "I was left with no money to buy food and even had to sell the little to buy other things eg salt."
replace b21b = "1" if  b21b == "there was crops failure due to pest and diseases hence inadequate harvest which is not sustainable"
replace b21b = "1" if  b21b == "crop fields   were flooded"
replace b21b = "1" if  b21b == "LIMITED FOOD FOR THE FAMILY SINCE MOST TIME WAS SPENT GOING TO THE HOSPITALS"
replace b21b = "2" if  b21b == "some food stuff was sold to recover from the shock"
replace b21b = "3" if  b21b == "human labour for production especially farming was limited"
replace b21b = "1" if  b21b == "little food for feeding was used to feed the mourners"
replace b21b = "3" if  b21b == "less crops were planted since most of the time was spent in the hospital"
replace b21b = "2" if  b21b == "sold a goat to pay for hospital bills"
replace b21b = "2" if  b21b == "Sold the little food following the bush fire"
replace b21b = "1" if  b21b == "there was hunger due to the destruction"
replace b21b = "3" if  b21b == "reduction in labour due to sickness led to low production,harvest and output"
replace b21b = "2" if  b21b == "I sold all foods in the house and left with few."
replace b21b = "2" if  b21b == "we had to sell the little food to buy other things eg salt, paraffin."
replace b21b = "1" if  b21b == "limited diversity of crops since crops were destroyed by pests"
replace b21b = "1" if  b21b == "limited food for the family since crops were dried up"
replace b21b = "1" if  b21b == "little harvest led to limited food in household"
replace b21b = "1" if  b21b == "shortage of food"
replace b21b = "1" if  b21b == "sold food items and used others for food during the funeral service"
replace b21b = "2" if  b21b == "were not easily able to slaughter birds for meal"
replace b21b = "2" if  b21b == "sold food items in the house to raise income"
replace b21b = "1" if  b21b == "we eat little than what we are suppose to eat because the money we are supposed to buy with food is diverted to buy drugs"
replace b21b = "3" if  b21b == "pre and post harvest handling of food both needs energy yet am so weak as a result of sickness"
replace b21b = "1" if  b21b == "there is scarcity of food in the household due to poor  harvest that forced me to buy food from the market"
replace b21b = "2" if  b21b == "It did affect food availability because the pigs died and some would not even be eaten."
replace b21b = "3" if  b21b == "didnt weed my food crops from the garden during the periods when death occurred"
replace b21b = "1" if  b21b == "food was not sufficient due to low yield"
replace b21b = "1" if  b21b == "reduced food availability since there was no farming due to sickness"
replace b21b = "1" if  b21b == "They lost most of there cassava tubers in the soil due to too much rainfall"
replace b21b = "3" if  b21b == "She is the one who used to dig and when  she fell ill it was not possible for her to dig ,hence affecting  food availability  in her home."
replace b21b = "1" if  b21b == "I had limited food in the house because didn't plant enough food crops."
replace b21b = "1" if  b21b == "shortage of food in the household due to low level of crops planted"
replace b21b = "1" if  b21b == "We couldn't have enough land to plant also enough food."
replace b21b = "2" if  b21b == "used food stored to feed mourners"
replace b21b = "2" if  b21b == "money to buy other food was spent to buy medicines for the animal"
replace b21b = "3" if  b21b == "reduction in human labour led to decline in production and income"
replace b21b = "2" if  b21b == "food items were used to feed mourners"
replace b21b = "1" if  b21b == "The food was not enough for the family since some part of it  failed."
replace b21b = "3" if  b21b == "could not dig due to the sickness, hence less food in the house"
replace b21b = "4" if  b21b == "low diversity of food for the household"
replace b21b = "1" if  b21b == "little food harvested hence little food and cassava got rotten"
replace b21b = "4" if  b21b == "low diversity of food for the household"
replace b21b = "1" if  b21b == "limited food for the family since little was caltivated"
replace b21b = "1" if  b21b == "harvest was very little because some crops got rotten"
replace b21b = "1" if  b21b == "food crops did not yield well like groundnuts and beans"
replace b21b = "1" if  b21b == "food scarcity due to rotting of cassava"
replace b21b = "1" if  b21b == "food crop  harvest was affected"
replace b21b = "4" if  b21b == "low diversity of food for the family due to limited time for caltivation"
replace b21b = "1" if  b21b == "Reduced household food stability"
replace b21b = "3" if  b21b == "there was no one to help garden work, hence no food"
replace b21b = "2" if  b21b == "sold beans to pay for other necessities like hospital bills"
replace b21b = "2" if  b21b == "sold food items for the burial arrangements"
replace b21b = "1" if  b21b == "There was no any left that he would slaughter  and also eat."
replace b21b = "1" if  b21b == "If crops are  spoiled getting food becomes hard."
replace b21b = "1" if  b21b == "it affected present food because gardens were flooded and plant were destroyed."
replace b21b = "1" if  b21b == "we had to divide and i remain with little."
replace b21b = "1" if  b21b == "It wasn't easy to get food during this time because i didn't plant any things."
replace b21b = "1" if  b21b == "low food quantity for the household"
replace b21b = "3" if  b21b == "had lesstime than required in crop field"
replace b21b = "1" if  b21b == "there was no one to help harvest food from the garden"
replace b21b = "1" if  b21b == "had less food harvest"
replace b21b = "1" if  b21b == "little was harvested hence low food availability"
replace b21b = "1" if  b21b == "low harvest led to little food"
replace b21b = "2" if  b21b == "money meant to help in buying other food items were used for treatment"
replace b21b = "1" if  b21b == "groundnuts nd cassava got rotten"
replace b21b = "2" if  b21b == "sold food items"
replace b21b = "2" if  b21b == "used up food stocks for burial arrangements"
replace b21b = "1" if  b21b == "limited food for da family"
replace b21b = "3" if  b21b == "time was spent in the hospital hence low food diversity"
replace b21b = "2" if  b21b == "She sold her food to get money for transport to the burial."
replace b21b = "2" if  b21b == "sold rice some meant for food"
replace b21b = "1" if  b21b == "All i planted got affected and i had nothing to cook at times."
replace b21b = "1" if  b21b == "It's always difficult to find out what to cook when the crops are destroyed."
replace b21b = "1" if  b21b == "The crops that was grown for food was sold to get money to help in the burial process."
replace b21b = "1" if  b21b == "They suffered for all that time in food lack."
replace b21b = "1" if  b21b == "crops were destroyed and it became hard to find what to bring home to eat"
replace b21b = "1" if  b21b == "its failure made food to be scarce."
replace b21b = "1" if  b21b == "food crop harvest for low"
replace b21b = "1" if  b21b == "used the little food to feed mourners hence low availability"
replace b21b = "1" if  b21b == "limited food for the family"
replace b21b = "1" if  b21b == "limited food for the household"
replace b21b = "1" if  b21b == "limited diversity of food for the family"
replace b21b = "2" if  b21b == "alot of food was ysed during taking care of the mouners hence limited diversity of food"
replace b21b = "2" if  b21b == "Due to misunderstandings in the house,food items are always misused."
replace b21b = "2" if  b21b == "sold food crops"
replace b21b = "2" if  b21b == "The money that would  have  help for food was spent on the burial process."
replace b21b = "4" if  b21b == "low diversity of food for the household"
replace b21b = "1" if  b21b == "Garden were flooded and plant got rotten eg cassava g nut etc."
replace b21b = "1" if  b21b == "The elephant also ate their  cassava  plantation and it affected  their  food availability."
replace b21b = "1" if  b21b == "The did not have what to harvest  and eat they  would  go and work in the farm to survive."
replace b21b = "4" if  b21b == "limited food for the family"
replace b21b = "4" if  b21b == "limited diversity of food for the family"
replace b21b = "1" if  b21b == "There was little for crop  left for food in the garden."
replace b21b = "1" if  b21b == "destroyed the food crops like cassava and sorghum"
replace b21b = "1" if  b21b == "My husband took every food and went with it."
replace b21b = "4" if  b21b == "limited food diversity in the family"
replace b21b = "2" if  b21b == "food was less and even sold the little in the house"
replace b21b = "3" if  b21b == "limited time farming"
replace b21b = "2" if  b21b == "sold groundnut to help"
replace b21b = "3" if  b21b == "He was not home with the wife to grow enough food."
replace b21b = "1" if  b21b == "The sickness made him not so fit to cultivate crops for food."
replace b21b = "1" if  b21b == "yield of crops reduced"
replace b21b = "1" if  b21b == "reduce ability to consume meat"
replace b21b = "3" if  b21b == "reduced house hold labour on food sourcing"
replace b21b = "3" if  b21b == "I was very weak that plant enough food crops as i used to do."
replace b21b = "1" if  b21b == "due to little harvest,  little food was stored for consumptions"
replace b21b = "1" if  b21b == "this mostly affect food crops and as a result of this you get smal food than what is plan."
replace b21b = "2" if  b21b == "sold food items to cater for vertinary services"
replace b21b = "1" if  b21b == "little crop were harvested this resulted into famine"
replace b21b = "1" if  b21b == "food crops especially beans failed to fruits"
replace b21b = "1" if  b21b == "it mostly destroys food crop and reduce quantity of food in the household"
replace b21b = "1" if  b21b == "There was no money to use and buy enough food in the house."
replace b21b = "2" if  b21b == "They had to use their stored food to carter for mourners."
replace b21b = "1" if  b21b == "reduced available quantity in the house"
replace b21b = "1" if  b21b == "the yield was low hence low food availability"
replace b21b = "1" if  b21b == "few yields hravested"
replace b21b = "2" if  b21b == "sold beans"
replace b21b = "4" if  b21b == "LIMITED FOOD IN THE HOUSE"
replace b21b = "4" if  b21b == "DIVERSITY OF FOOD SINCE SOME FOOD WERE SOLD TO RECOVER SOME INCOME"
replace b21b = "2" if  b21b == "used food during fineral"
replace b21b = "1" if  b21b == "little food due to low harvest"
replace b21b = "2" if  b21b == "used saved seed to feed the mourners"
replace b21b = "2" if  b21b == "spend most food"
replace b21b = "1" if  b21b == "crops were destroyed hence little harvest and limited food at home"
replace b21b = "1" if  b21b == "reduce yield"
replace b21b = "2" if  b21b == "forced to sell food crops to pay medical bill"
replace b21b = "1" if  b21b == "tremple and ate crops from field"
replace b21b = "1" if  b21b == "no harvest  led to limited food to eat"
replace b21b = "1" if  b21b == "semsame were stolen from the garden this resulted into serious gamine"
replace b21b = "1" if  b21b == "low farm output"
replace b21b = "1" if  b21b == "Didn't dig well to my satisfaction and sold the little i had for medicines"
replace b21b = "1" if  b21b == "less food in the house"
replace b21b = "2" if  b21b == "lossed alot of food during burial"
replace b21b = "2" if  b21b == "reduced food items, since they were sold"
replace b21b = "3" if  b21b == "could not do farming caused being hospitalise"
replace b21b = "4" if  b21b == "REDUCED ON THE VARIETY OF FOOD"
replace b21b = "1" if  b21b == "food crops were destroyed and it became to get what to cook."
replace b21b = "2" if  b21b == "She did not have chicken to sale and get money to buy food."
replace b21b = "2" if  b21b == "sold food items to get money"
replace b21b = "1" if  b21b == "no harvest of simsim limited  food in my household"
replace b21b = "1" if  b21b == "Some beans she had in the house got spoilt due to coldness."
replace b21b = "3" if  b21b == "I was not able even to look food for household because i was weak"
replace b21b = "2" if  b21b == "sold food items to raise some money"
replace b21b = "1" if  b21b == "reduce  yelds of pegeon peas and gnuts"
replace b21b = "1" if  b21b == "reduces food since they were,sold"
replace b21b = "2" if  b21b == "SOLD MAIZE"
replace b21b = "2" if  b21b == "SOLD SORGHUM TO RAISE TRANSPORT"
replace b21b = "2" if  b21b == "increases the rate of cooking due number of the people at home"
replace b21b = "1" if  b21b == "you plant enough food due to small land"
replace b21b = "2" if  b21b == "sold 3 sacs of gnuts"
replace b21b = "3" if  b21b == "low food production due to few labour"
replace b21b = "1" if  b21b == "some banana were destroyed"
replace b21b = "1" if  b21b == "little food for feeding since most was burnt"
replace b21b = "1" if  b21b == "In stead of selling sometimes animal to help in other way i was forced to sell other food."

destring b21b,replace
#delimit ;
label define b21bb
1 "Led to food shortage"
2 "Food was sold to get money that was used to recover from the shock"
3 "Decline in garming labour"
4 "Low diversity of food"
;
#delimit cr

la values b21b b21bb
save "Module B",replace


replace b22b = "1" if  b22b == "sold livestock"
replace b22b = "3" if  b22b == "slaughtered goat"
replace b22b = "2" if  b22b == "No one else was there to take care of them."
replace b22b = "2" if  b22b == "There was no proper care for them since I was sick."
replace b22b = "4" if  b22b == "Some animals were dying due to excess rain fall."
replace b22b = "4" if  b22b == "ticks were very common and this attacked livestock so much"
replace b22b = "3" if  b22b == "killed 2 goats for the funeral service"
replace b22b = "5" if  b22b == "It is that stolen food which makes them able to buy the livestock when the food is sold."
replace b22b = "2" if  b22b == "she was not able to tie her goats to feed."
replace b22b = "4" if  b22b == "Rain was too much sometimes was killing young animals."
replace b22b = "6" if  b22b == "i could not now buy medicines to treat them."
replace b22b = "6" if  b22b == "i couldn't afford vertinary services to take care of the sick animals like i use to. during good harvest,  i would sell those farm products and have money for the services"
replace b22b = "4" if  b22b == "animals  contracted diseases  and died"
replace b22b = "4" if  b22b == "loss of the livestock  (through death)"
replace b22b = "1" if  b22b == "livestock was sold to recover from the shock"
replace b22b = "1" if  b22b == "sold a goat"
replace b22b = "4" if  b22b == "Animals died due to weather related diseases"
replace b22b = "2" if  b22b == "difficult to care take animals in sickness time"
replace b22b = "3" if  b22b == "others were killed to feed the visitors."
replace b22b = "4" if  b22b == "most of the birds died from the diseases"
replace b22b = "7" if  b22b == "grasses dried up hence there was no limited  food to feed on leading to unhealthy growth"
replace b22b = "2" if  b22b == "goats were sold and others slaughtered"
replace b22b = "3" if  b22b == "killed the livestock"
replace b22b = "1" if  b22b == "sold livestock to help in paying hospital bills"
replace b22b = "1" if  b22b == "we sold livestocks to raise money both for treatments"
replace b22b = "2" if  b22b == "there wasnt anybody to look after the livestocks as i was sick."
replace b22b = "4" if  b22b == "It affected the number of livestock since others died."
replace b22b = "5" if  b22b == "my goats were stolen in absent from home when i was attending my brothers funeral"
replace b22b = "7" if  b22b == "There no enough space for them."
replace b22b = "4" if  b22b == "6 goats died"
replace b22b = "3" if  b22b == "slaughtered 8 goats"
replace b22b = "4" if  b22b == "one died"
replace b22b = "3" if  b22b == "slaughtered livestock for funeral service"
replace b22b = "4" if  b22b == "unhealthy growth"
replace b22b = "1" if  b22b == "sold some goats and chicken"
replace b22b = "4" if  b22b == "some goats died"
replace b22b = "4" if  b22b == "livestocks died due to poor feeds"
replace b22b = "4" if  b22b == "Rain and cold killed some animals e.g. goats"
replace b22b = "3" if  b22b == "slaughtered livestock to feed mourners"
replace b22b = "7" if  b22b == "There was no enough capacity  for  him to increase  the number  of his livestock."
replace b22b = "4" if  b22b == "It was killing also the young birds and animals."
replace b22b = "4" if  b22b == "Other animals were infected with the disease that caused the death"
replace b22b = "5" if  b22b == "others were stolen because my husband left me and nobody was there to take care."
replace b22b = "4" if  b22b == "Animals died"
replace b22b = "3" if  b22b == "Others were also killed by these people during the fight."
replace b22b = "1" if  b22b == "sold goats"
replace b22b = "4" if  b22b == "Lossed livestocks to diseases"
replace b22b = "1" if  b22b == "sold 2 goats and 3 were used for funeral service"
replace b22b = "3" if  b22b == "There were no people to tie the goats to feed since people had gone for burial."
replace b22b = "3" if  b22b == "slaughtered goats for the funeral"
replace b22b = "1" if  b22b == "sold livestock e.g. goats"
replace b22b = "3" if  b22b == "They took a goat to help in the burial process."
replace b22b = "1" if  b22b == "sold to pay for hospital bills"
replace b22b = "3" if  b22b == "By killing the young animals and birds."
replace b22b = "3" if  b22b == "some livestock was slaughtered to take care of the mouners"
replace b22b = "2" if  b22b == "No one remains to take care of them."
replace b22b = "3" if  b22b == "GAVE AWAY SOME LIVESTOCK TO FEED THE MOURNERS"
replace b22b = "1" if  b22b == "sold 3 goats"
replace b22b = "2" if  b22b == "There was no one to take good care of the goats and at times he would come and find  when some are dead."
replace b22b = "4" if  b22b == "Animal died of diseases"
replace b22b = "4" if  b22b == "death of the livestocks"
replace b22b = "7" if  b22b == "livestock suffered from lacked of good feeds"
replace b22b = "1" if  b22b == "I was forced to sell some cheaply."
replace b22b = "4" if  b22b == "due to drought, we lost several goats as a result of inadequate feeds"
replace b22b = "4" if  b22b == "over 9 goats died because of animal disease"
replace b22b = "4" if  b22b == "animal health was very poor , many suffered from diarrhea"
replace b22b = "3" if  b22b == "They killed two goats for the burial process."
replace b22b = "4" if  b22b == "animals such as pigs were affected"
replace b22b = "3" if  b22b == "killed others for funeral services"
replace b22b = "4" if  b22b == "poor heath due to bad feeding"
replace b22b = "3" if  b22b == "sloughtered goats"
replace b22b = "3" if  b22b == "slaughtered some"
replace b22b = "4" if  b22b == "carnivorous were eating domestic animals"
replace b22b = "2" if  b22b == "no body was there to look after them and others got lost"
replace b22b = "5" if  b22b == "many goats and chicken were stolen"
replace b22b = "3" if  b22b == "sold and spent others on traditional burial ceremonies"
replace b22b = "1" if  b22b == "reduced, sold goats"
replace b22b = "7" if  b22b == "There was a problem in getting agood shelter for their livestock."
replace b22b = "3" if  b22b == "killed 6 goats"
replace b22b = "7" if  b22b == "no enough space for them"
replace b22b = "4" if  b22b == "Very many livestock died."


destring b22b,replace
#delimit ;
label define b22b
1 "Sold livestock"
3 "Killed livestock for food"
2 "Decline in farming labour"
4 "Death of livestock"
5 "Theft of livestock"
6 "Increased expenses"
7 "Reduced livestock feed"
;
#delimit cr

la values b22b b22b
save "Module B",replace

replace b23b = "1" if  b23b == "poor pasture"
replace b23b = "." if  b23b == "none"
replace b23b = "1" if  b23b == "conterminated grasses with infectious organisms."
replace b23b = "2" if  b23b == "Some feed got rotten."
replace b23b = "2" if  b23b == "buying feed was also hard since i had no money."
replace b23b = "1" if  b23b == "grazing  ground were muddy"
replace b23b = "2" if  b23b == "grasses were dried up for animals"
replace b23b = "2" if  b23b == "grasses dried up"
replace b23b = "2" if  b23b == "The feed for livestock got spoilt in the house since there was no enough pigs to eat them"
replace b23b = "2" if  b23b == "pasture dried"
replace b23b = "2" if  b23b == "I wasn't enough for them."
replace b23b = "2" if  b23b == "pasture dried up"
replace b23b = "2" if  b23b == "Feeds in the small grazing  field was reduced"
replace b23b = "1" if  b23b == "Some feed got rotten."
replace b23b = "2" if  b23b == "pasture also wilted"
replace b23b = "2" if  b23b == "pasture dried up"
replace b23b = "2" if  b23b == "feeds dried off completely"
replace b23b = "2" if  b23b == "feeds dried off"
replace b23b = "2" if  b23b == "some animal spread the diseases through contermination of pasture leaves"
replace b23b = "3" if  b23b == "most feeds dried making animal to move far scavenging"
replace b23b = "2" if  b23b == "dried"
replace b23b = "3" if  b23b == "chicks were killed"
replace b23b = "2" if  b23b == "grass dried up"
replace b23b = "2" if  b23b == "There was no good place to keep the livestock feeds."
replace b23b = "2" if  b23b == "due to small land you will not have to tie them eg, goats"


destring b23b,replace
#delimit ;
label define b23b
1 "Poor quality pasture"
2 "Inadequate Pasture"
3 "Death of animals"
;
#delimit cr

la values b23b b23b
save "Module B",replace


replace b25 = "1" if b25 == "ANIMAL DISEASE"
replace b25 = "1" if b25 == "ANIMAL DISEASES"
replace b25 = "2" if b25 == "BANANA DISEASE"
replace b25 = "3" if b25 == "BURNING OF PLACES"
replace b25 = "4" if b25 == "CONFLICT"
replace b25 = "4" if b25 == "CONFLICTS"
replace b25 = "5" if b25 == "DEATH"
replace b25 = "5" if b25 == "DEATH"
replace b25 = "5" if b25 == "DEATH"
replace b25 = "5" if b25 == "DEATH OF HIS UNCLE."
replace b25 = "6" if b25 == "DEATH OF LIVESTOCK"
replace b25 = "6" if b25 == "DEATH OF THE GOAT"
replace b25 = "4" if b25 == "DOMESTIC VIOLENCE"
replace b25 = "7" if b25 == "DRAUGHT"
replace b25 = "7" if b25 == "DRAUGHT"
replace b25 = "7" if b25 == "DROUGHT"
replace b25 = "7" if b25 == "DROUGHT"
replace b25 = "7" if b25 == "DROUGHT"
replace b25 = "7" if b25 == "DROUGHT"
replace b25 = "8" if b25 == "ELEPHANT INVASION"
replace b25 = "9" if b25 == "FLOOD"
replace b25 = "9" if b25 == "FLOOD"
replace b25 = "9" if b25 == "FLOOD"
replace b25 = "9" if b25 == "FLOODS"
replace b25 = "9" if b25 == "FLOODS"
replace b25 = "9" if b25 == "FLOODS"
replace b25 = "10" if b25 == "HAIL STORMS"
replace b25 = "10" if b25 == "HAILSTONE"
replace b25 = "3" if b25 == "HOUSE BURNT"
replace b25 = "11" if b25 == "HUMAN SICKNESS"
replace b25 = "11" if b25 == "HUMAN SICKNESS"
replace b25 = "11" if b25 == "HUMAN SICKNESS"
replace b25 = "12" if b25 == "LACK OF SCHOOL FEES"
replace b25 = "13" if b25 == "LAND DISPUTE"
replace b25 = "13" if b25 == "LAND DISPUTE"
replace b25 = "13" if b25 == "LAND PROBLEM"
replace b25 = "13" if b25 == "LAND RWANGLE"
replace b25 = "13" if b25 == "LAND WRANGLE"
replace b25 = "1" if b25 == "LIVESTOCK DISEASE"
replace b25 = "1" if b25 == "LIVESTOCK DISEASE"
replace b25 = "1" if b25 == "LIVESTOCK DISEASE(SWINE FEVER)"
replace b25 = "1" if b25 == "LIVESTOCK LIKE CATTLE AND GOATS DESTROYING CROPS"
replace b25 = "1" if b25 == "LOSS OF DROUGHT ANIMALS"
replace b25 = "5" if b25 == "LOSS OF LIFES"
replace b25 = "5" if b25 == "LOSS OF LIFES"
replace b25 = "10" if b25 == "MUCH RAIN"
replace b25 = "10" if b25 == "MUCH RAIN"
replace b25 = "." if b25 == "N/A"
replace b25 = "." if b25 == "NA"
replace b25 = "." if b25 == "NONE"
replace b25 = "12" if b25 == "PAYING OF SCHOOL FEES"
replace b25 = "2" if b25 == "PEST"
replace b25 = "2" if b25 == "PEST"
replace b25 = "2" if b25 == "PESTS (STEM BORER)"
replace b25 = "14" if b25 == "ROBERY"
replace b25 = "12" if b25 == "SCHOOL FEES"
replace b25 = "12" if b25 == "SCHOOL FEES"
replace b25 = "12" if b25 == "SCHOOL FEES"
replace b25 = "12" if b25 == "SHORTAGE OF LAND"
replace b25 = "13" if b25 == "SICKNESS"
replace b25 = "11" if b25 == "SICKNESS"
replace b25 = "11" if b25 == "SICKNESS"
replace b25 = "11" if b25 == "SICKNESS"
replace b25 = "11" if b25 == "STORM"
replace b25 = "10" if b25 == "STORM"
replace b25 = "14" if b25 == "THEFT"
replace b25 = "14" if b25 == "THIEVES"
replace b25 = "10" if b25 == "TOO MUCH RAIN"
replace b25 = "10" if b25 == "TOO MUCH RAIN"
replace b25 = "7" if b25 == "TOO MUCH SUNSHINE"
replace b25 = "7" if b25 == "TOO MUCH SUNSHINE"
replace b25 = "7" if b25 == "TOO MUCH SUNSHINE."
replace b25 = "7" if b25 == "UNRELLIABLE SEASONS"
replace b25 = "15" if b25 == "UNRELLIABLE WEATHER CONDITION"
replace b25 = "3" if b25 == "WILD FIRE"

destring b25,replace
#delimit ;
label define b25
1 "Animal Disease"
2 "Crop Disease"
3 "Wildfire"
4 "Family conflicts"
5 "Death of a family member"
6 "Death of livestock"
7 "Drought"
8 "Crops attacked by wildlife animals"
9 "Floods"
10 "Hailstorms"
11 "Human sickness"
12 "No income"
13 "Land disputes"
14 "Theft"
15 "Unreliable seasons"
;
#delimit cr

la values b25 b25
save "Module B",replace

replace b27b = "1" if b27b == "most time was spent moving up and down trying to solve the dispute hence no time to carry out other economic activities"
replace b27b = "2" if b27b == "paying school fees of many children"
replace b27b = "1" if b27b == "Spent a lot in the court to clear this problem."
replace b27b = "3" if b27b == "He had planned to sale them after they mature but they never made to maturity."
replace b27b = "3" if b27b == "There was nothing for her to sale and get money"
replace b27b = "3" if b27b == "destroyed crops, the source of income"
replace b27b = "1" if b27b == "NO SERIOUS ECONOMIC ACTIVITY WAS DONE TO RAISE INCOME"
replace b27b = "2" if b27b == "The money they had was used in the hospital for treatment."
replace b27b = "4" if b27b == "No where to dig and have something to sell."
replace b27b = "4" if b27b == "we depend mostly agriculture's product sale as our source of income but due to drought the field crops dried"
replace b27b = "3" if b27b == "crops were burnt hence reducing the source of income"
replace b27b = "5" if b27b == "reduced on the income level of the household since food and livestock were stolen"
replace b27b = "5" if b27b == "reduced sales products, reducing income"
replace b27b = "3" if b27b == "Crops were destroyed and it became hard to get what to sell to raise money"
replace b27b = "3" if b27b == "crops were washed leading to limited income for the family"
replace b27b = "1" if b27b == "There was no time for her to do economic work because she was spending most of her time in the hospital."
replace b27b = "5" if b27b == "chicken and goats where i depend on as source of income were stolen this reduced my earnings"
replace b27b = "3" if b27b == "The banana never grew to maturity and would not be sold."
replace b27b = "3" if b27b == "The crops she planted failed due to too much sunshine."
replace b27b = "3" if b27b == "Crops are always destroyed and we can get what sell to give us income."
replace b27b = "3" if b27b == "it destroyed crops in the garden hence low production and hence little income"
replace b27b = "5" if b27b == "Lost money since they were sold to susutain the household"
replace b27b = "2" if b27b == "alot of money was spent to take care of the mouners"
replace b27b = "6" if b27b == "Doing any business was difficult because there were rain every time and the roads was bad."
replace b27b = "2" if b27b == "More income was required to pay for fields preparation"
replace b27b = "2" if b27b == "paying fees made us spend most of our savings"
replace b27b = "2" if b27b == "treating the animals took money and death of the livestock"
replace b27b = "2" if b27b == "increased expenses to take care of adopted children"
replace b27b = "7" if b27b == "The elephanf destryed what she would have sold and got money."
replace b27b = "5" if b27b == "There was no goat to reproduce and improve on their income."
replace b27b = "1" if b27b == "I used to dig about five to ten gardens, but I reduced to three only."
replace b27b = "5" if b27b == "it took what they  had kept for future use use."
replace b27b = "2" if b27b == "paying school fees using the little money"
replace b27b = "2" if b27b == "spent money buying pesticide but still did not yield well"
replace b27b = "5" if b27b == "Since the harvest was low, i can't find what  sell to to give me money."
replace b27b = "3" if b27b == "crops were destroyed and it became hard to find what to sell to raise income."
replace b27b = "5" if b27b == "LIMITED SOURCE OF INCOME SINCE CROPS WERE WASHED BY RAIN"
replace b27b = "5" if b27b == "ALOT OF TIME WASTED TRYING TO SOLVE THE DISPUTE ,NO ECONOMIC ACTIVITY WAS DONE TO RAISE INCOME"
replace b27b = "3" if b27b == "it washed away sesame seeds planted leading to low yields"
replace b27b = "2" if b27b == "They spent the money they had for treatmen."
replace b27b = "5" if b27b == "few animal died which with time would been sold"
replace b27b = "1" if b27b == "She was not able to pick her crops from the garden and sale and earn money."
replace b27b = "2" if b27b == "Most of the money was used for health recovery."
replace b27b = "2" if b27b == "reduced, spent in the hospital and burial"
replace b27b = "5" if b27b == "LITTLE INCOME IN THE HOUSE SINCE CROPS WERE DESTROYED"
replace b27b = "5" if b27b == "REDUCED ON INCOME SINCE THE CROPS WERE DESTROYED AND NOTHING WAS GOT FROM IT"
replace b27b = "3" if b27b == "destroyed simsim crops and there was low harvest hence low income"
replace b27b = "5" if b27b == "if crops are destroyed t affect your income"
replace b27b = "8" if b27b == "peagon peas and simsim were stolen"
replace b27b = "5" if b27b == "savings reduced"
replace b27b = "5" if b27b == "we didnt have good harvest during the season which drought occurred so didnt hve enough to sell and make good money"
replace b27b = "2" if b27b == "money were lost on burrial arrangement"
replace b27b = "2" if b27b == "SPENT ALOT OF MONEY ON MOTIVATING MEDIATOR"
replace b27b = "3" if b27b == "They lost their crops in the garden due to too much sunshin and had nothing much to harvest and sale."
replace b27b = "5" if b27b == "REDUCED ON THE LEVEL OF INCOME BECAUSE THERE WAS NO WHERE TO CULTIVATE"
replace b27b = "2" if b27b == "spent a lot of money in production but the yield was very low"
replace b27b = "5" if b27b == "The sty was burnt and the pigs were leaving outside in the sun which reduced their size and it was not possible to sale them and get good money."
replace b27b = "5" if b27b == "crops did not yield well to earn us income"
replace b27b = "5" if b27b == "reduce yields of crops hence cash"
replace b27b = "5" if b27b == "low crop yield, reduce sales for income"
replace b27b = "5" if b27b == "LOW OUTPUTS AND POOR QUALITY"
replace b27b = "5" if b27b == "REDUCED ON THE INCOME"
replace b27b = "5" if b27b == "after destroying the crops yield is yield hence less income"
replace b27b = "1" if b27b == "decrease in the number of my household member led to low level of production hence low income"

destring b27b,replace
#delimit ;
label define b27b
1 "Reduced farming time"
2 "Increase in household expenses"
3 "Crops failed"
4 "No land to produce"
5 "Reduced income"
6 "Roads became impassible"
7 "Crops were destroyed by wild animals"
8 "Crops were stolen"
;
#delimit cr

la values b27b b27b
save "Module B",replace


replace b28b = "1" if b28b == "He sold his hoofer to get money to treat his pigs."
replace b28b = "1" if b28b == "She sold her clothes."
replace b28b = "2" if b28b == "They were broken in the fight eg chairs and bed."
replace b28b = "3" if b28b == "my plastic chairs were stolen from the house"
replace b28b = "2" if b28b == "all assets in the house was burnt"
replace b28b = "1" if b28b == "sold furniture"
replace b28b = "1" if b28b == "sold motorcycle"
replace b28b = "1" if b28b == "sold bycle"
replace b28b = "4" if b28b == "contributed animals for burial rituals"
replace b28b = "2" if b28b == "Some assets got burnt in the process."

destring b28b,replace
#delimit ;
label define b28b
1 "Sold household assets"
2 "Assets were damaged"
3 "Assets were stolen"
4 "Contributed livestock to burial rituals"
;
#delimit cr

la values b28b b28b
save "Module B",replace

replace b29b = "1" if b29b == "limited diversity of food in the family since little was CALTIVATED"
replace b29b = "2" if b29b == "sold rice and groundnut for school fees hence reduced availability"
replace b29b = "3" if b29b == "There was no where to plant the food crops to me."
replace b29b = "4" if b29b == "He used to sale the livestock and feed his family but it was now had whdn the pigs were sick."
replace b29b = "2" if b29b == "used food items as sales"
replace b29b = "5" if b29b == "THERE WAS LIMITED TIME TO PLANT CROPS LEADING TO SHORTAGE OF FOOD IN THE FAMILY"
replace b29b = "5" if b29b == "There was no one to do garden work due to lack of enough time."
replace b29b = "6" if b29b == "my food was burnt"
replace b29b = "7" if b29b == "there was total crops failure due to drought"
replace b29b = "8" if b29b == "limited food for the family since some crops were burnt"
replace b29b = "8" if b29b == "shortage of food since most of the food stuff were stolen"
replace b29b = "8" if b29b == "food stocks greatly reduced"
replace b29b = "8" if b29b == "There were no food even in the market to buy."
replace b29b = "1" if b29b == "limited food diversity for the household"
replace b29b = "5" if b29b == "There was no time for proper farming to keep enough food in the house"
replace b29b = "7" if b29b == "They also used to feed on the bananas but since it failed they did not have enough to eat."
replace b29b = "7" if b29b == "There was no way for her to get enough food since the crops failed to do well."
replace b29b = "7" if b29b == "Food crops are always affected and it becomes difficult to find out what to cook at times."
replace b29b = "7" if b29b == "cassava did not do well and othr crops causing hunger"
replace b29b = "8" if b29b == "shortage of food in the household due to low agricultural activities that time"
replace b29b = "7" if b29b == "Garden were flooded and plant destroyed."
replace b29b = "3" if b29b == "Cultivated less than usual field sizes"
replace b29b = "2" if b29b == "sold some food items in the house"
replace b29b = "9" if b29b == "The elephant destroyed their foodstuff and therebwas just little to survive."
replace b29b = "3" if b29b == "I can't plant more due to lack of land."
replace b29b = "2" if b29b == "They sold food to get money for transport."
replace b29b = "2" if b29b == "sold food crops to pay fees"
replace b29b = "8" if b29b == "the little harvested was the one stored"
replace b29b = "7" if b29b == "If the crops are destroyed you can not get enough food in the house"
replace b29b = "7" if b29b == "Even food crops eaten from garden by this pest eg grasshopper."
replace b29b = "1" if b29b == "limited food diversity"
replace b29b = "1" if b29b == "REDUCED FOOD DIVERSITY SINCE LITTLE WAS CALTIVATED"
replace b29b = "6" if b29b == "food burnt"
replace b29b = "5" if b29b == "The mother was attending  to the child during weeding period and ended up  losing her crops due to weeds."
replace b29b = "5" if b29b == "lack of access to meet during holidays and events"
replace b29b = "8" if b29b == "it has brought hunger since what was planted failed to grow to the expectation."
replace b29b = "2" if b29b == "reduced since they were sold"
replace b29b = "7" if b29b == "CASSAVA AND SIMSIM WERE DESTROYED LEADING TO LIMITED FOOD"
replace b29b = "8" if b29b == "LOW FOOD AT HOME SINCE THERE WAS SCARCITY IN FOOD"
replace b29b = "7" if b29b == "destroye maize garden hence low harvest and little food"
replace b29b = "7" if b29b == "this affect food crops so much and it became hard to get what to cook at home."
replace b29b = "6" if b29b == "food items were stolen causing shortage"
replace b29b = "8" if b29b == "not able to buy the food we would like to eat due to little income and savings"
replace b29b = "8" if b29b == "poor and little harvest resulted to scarcity of food in the house"
replace b29b = "5" if b29b == "spend time away without digging"
replace b29b = "8" if b29b == "SHORTAGE OF FOOD"
replace b29b = "8" if b29b == "There was no enough food to eat due to crops failure."
replace b29b = "8" if b29b == "food quantity in house reduced"
replace b29b = "6" if b29b == "one sack beans got burnt."
replace b29b = "8" if b29b == "reduce quality and quantities harvested of cassava"
replace b29b = "8" if b29b == "less household food"
replace b29b = "1" if b29b == "LOW VARIETY OF FOOD"
replace b29b = "8" if b29b == "reduced yield hence low food availability"
replace b29b = "8" if b29b == "low level of crop production"


destring b29b,replace
#delimit ;
label define b29b
1 "Reduced food diversity"
2 "Sold food because of the shock"
3 "No land to plant crops"
4 "Reduced Income"
5 "No time for crop cultivation"
6 "Food was lost"
7 "Crops failed to produce"
8 "Reduced quantity of food"
9 "Crops destroyed by wild animals"
;
#delimit cr

la values b29b b29b
save "Module B",replace

replace b30b = "1" if b30b == "sold a goat for school fees"
replace b30b = "2" if b30b == "Others were killed during the fight."
replace b30b = "3" if b30b == "Pigs were dying ."
replace b30b = "1" if b30b == "Reduced the number of the available goats."
replace b30b = "4" if b30b == "cold attacked the animals"
replace b30b = "5" if b30b == "my animals  and chickens were also taken by force."
replace b30b = "4" if b30b == "livestock diseases was common as they depended on dirty water for drinking"
replace b30b = "6" if b30b == "reduced on the number of livestock since majority were stolen"
replace b30b = "4" if b30b == "Others died as a result of coldness."
replace b30b = "1" if b30b == "Some animals were sold to get money hospital bills."
replace b30b = "6" if b30b == "my goats were stolen"
replace b30b = "1" if b30b == "The money they used to get and treat the livestock was now had to get."
replace b30b = "3" if b30b == "Especially the young one was dying due to too much rain."
replace b30b = "1" if b30b == "Greatly reduced in numbers"
replace b30b = "4" if b30b == "it was also killing the young one."
replace b30b = "4" if b30b == "Animal was lossed due to wounds"
replace b30b = "3" if b30b == "livestock died"
replace b30b = "1" if b30b == "sold livestocks i.e. goats"
replace b30b = "7" if b30b == "It become squeezed for animals to graze in a small area."
replace b30b = "1" if b30b == "They sold a goat to get money."
replace b30b = "3" if b30b == "all the livestocks died"
replace b30b = "3" if b30b == "The young animals and birds were also falling sick died."
replace b30b = "8" if b30b == "There was no one to tire the goats to feed in the field."
replace b30b = "3" if b30b == "animal died"
replace b30b = "9" if b30b == "They did not have produce to sale and get money buy more animals."
replace b30b = "9" if b30b == "reduced, sold animals"
replace b30b = "4" if b30b == "livestock diseases resulted due to inadequate and poor feeding"
replace b30b = "10" if b30b == "killed animals for feeding people"
replace b30b = "10" if b30b == "killed 1 goat"
replace b30b = "7" if b30b == "There was no grass to use to make shelter for the livestock."
replace b30b = "3" if b30b == "it killed 5 young ones of a goat"
replace b30b = "3" if b30b == "many chicks were"

destring b30b,replace
#delimit ;
label define b30b
1 "Sold livestock to cope up with the shock"
2 "Livestock were killed in the fight"
3 "Some livestock died"
4 "Livestock were affected by diseases"
5 "Livestock were taken by force"
6 "Some livestock were stolen"
7 "Land for grazing reduced"
8 "There was no one to care for the livestock"
9 "Reduced income"
10 "Livestock were killed for traditional ceremonies"
;
#delimit cr

la values b30b b30b
save "Module B",replace


replace b31b = "1" if b31b == "I had no where to tie them to eat eg goats and cattle."
replace b31b = "1" if b31b == "I had nothing to give to them eg pig could not only feed on grasses."
replace b31b = "1" if b31b == "water and livestocks feeds dried off"
replace b31b = "1" if b31b == "grasses were also burnt limiting livestock feeds"
replace b31b = "1" if b31b == "It was hard to find what to give them to feed on."
replace b31b = "2" if b31b == "She did have time to weed her cassava plantation that was also used to feed the pigs."
replace b31b = "1" if b31b == "Can't find enogh feed for them."
replace b31b = "1" if b31b == "The grass dried up."
replace b31b = "1" if b31b == "livestock feeds dried off hence there was scarcity of feeds"
replace b31b = "1" if b31b == "The grass for livestock dried up."
replace b31b = "1" if b31b == "grass dried"
replace b31b = "1" if b31b == "The grass to feed the livestock got burnt."
replace b31b = "1" if b31b == "neighbours livestock fed on the feeds of theirs"


destring b31b,replace
#delimit ;
label define b31b
1 "Inadequate pasture for livestock"
2 "Limited time to work on the farm"
;
#delimit cr

la values b31b b31b
save "Module B",replace


replace b53 = "1" if b53 == "yes. village saving"
replace b53 = "2" if b53 == "working as a group and got support from ACTED NGO in farming activities"
replace b53 = "3" if b53 == "we used insecticide to spray some crops eg maize"
replace b53 = "." if b53 == "u"
replace b53 = "4" if b53 == "tailoring"
replace b53 = "2" if b53 == "support from vsla"
replace b53 = "5" if b53 == "Stopped smoking"
replace b53 = "3" if b53 == "started spraying my crops"
replace b53 = "4" if b53 == "started selling brooms"
replace b53 = "6" if b53 == "started planting at the wright time of the season"
replace b53 = "6" if b53 == "started planting at the wright time"
replace b53 = "6" if b53 == "started planting at the right time of the season"
replace b53 = "6" if b53 == "started planting at the right time of the season"
replace b53 = "4" if b53 == "started mining sand"
replace b53 = "7" if b53 == "started livestock farming"
replace b53 = "7" if b53 == "started farming in wetland"
replace b53 = "4" if b53 == "started doing tailoring work"
replace b53 = "4" if b53 == "started charcoal burning"
replace b53 = "4" if b53 == "started charcoal burning"
replace b53 = "4" if b53 == "started burning charcoal"
replace b53 = "4" if b53 == "started brewing alcohol"
replace b53 = "4" if b53 == "started attending any vetenary teaching how to livestock"
replace b53 = "4" if b53 == "selling fire woods and charcoal"
replace b53 = "4" if b53 == "Proper sheduling of work for the household and other casual work"
replace b53 = "4" if b53 == "phone repair"
replace b53 = "." if b53 == "none"
replace b53 = "." if b53 == "NONE"
replace b53 = "." if b53 == "no"
replace b53 = "." if b53 == "nil"
replace b53 = "5" if b53 == "my husband reduced in drinking alcahole"
replace b53 = "4" if b53 == "my husband does carpentry"
replace b53 = "8" if b53 == "MOVED FROM WHERE ELEPHANTS USED TO DISTURB THEM"
replace b53 = "8" if b53 == "Migrated to another Village"
replace b53 = "4" if b53 == "making local brew"
replace b53 = "4" if b53 == "making local brew"
replace b53 = "4" if b53 == "joint village savings"
replace b53 = "1" if b53 == "joined savings group "bolicup""
replace b53 = "1" if b53 == "joined "bolicup" group"
replace b53 = "1" if b53 == "join women groups and village saving"
replace b53 = "1" if b53 == "join village saving group"
replace b53 = "1" if b53 == "join village saving and credit society"
replace b53 = "1" if b53 == "join village saving"
replace b53 = "1" if b53 == "join saving group"
replace b53 = "1" if b53 == "join elderly church group"
replace b53 = "1" if b53 == "I started diging in the swamps during dry times."
replace b53 = "7" if b53 == "I started diging in the swamps areas."
replace b53 = "7" if b53 == "I started digging near  water  which was easy to water plant."
replace b53 = "7" if b53 == "I started digging around water sources during the dry season."
replace b53 = "7" if b53 == "I started digging around water"
replace b53 = "7" if b53 == "I moved to dig near water sources."
replace b53 = "1" if b53 == "i joined village saving group bol icup"
replace b53 = "4" if b53 == "i did  local brewing for the local alcohol for few months and stopped."
replace b53 = "7" if b53 == "I began digging in wet area during droughts times."
replace b53 = "4" if b53 == "got engaged in bricks laying so as to raise money"
replace b53 = "4" if b53 == "Gave out house for rent"
replace b53 = "7" if b53 == "Farmers meetings to practice irrigation"
replace b53 = "9" if b53 == "exchange labour"
replace b53 = "4" if b53 == "engaged in productionnof local brew"
replace b53 = "4" if b53 == "Engaged in distilling of local alcohol"
replace b53 = "1" if b53 == "Engaged in distilling alcohol"
replace b53 = "1" if b53 == "engage in village saving and cedit society"
replace b53 = "1" if b53 == "engage in vilage saving and credit group"
replace b53 = "7" if b53 == "doing mixed farming so that other tolerant crops may help after a shock"
replace b53 = "4" if b53 == "cutting grass for sell"
replace b53 = "4" if b53 == "cutting grass and selling to people at the centre"
replace b53 = "4" if b53 == "charcoal burning"
replace b53 = "4" if b53 == "brick molding."
replace b53 = "4" if b53 == "brick making"
replace b53 = "4" if b53 == "brewing alcohol for sale"
replace b53 = "4" if b53 == "already planned to leave the old home"
replace b53 = "7" if b53 == "added more livestock"
replace b53 = "." if b53 == "88"
replace b53 = "." if b53 == "0"


destring b53,replace
#delimit ;
label define b53
1 "Joined village savings group"
2 "Recieved support from local NGOs"
3 "Controlled pests using insecticides"
4 "Started engaing in off farm activities"
5 "Stopped taking drugs"
6 "Started planting crops early enough"
7 "Diversified farming"
8 "Moved to another village safer from elephants"
9 "Exchnage labour"

;
#delimit cr

la values b53 b53
save "Module B",replace


replace b57 = "5" if b57 == "Accident"
replace b57 = "6" if b57 == "Animals attack e.g. Elephants and cat.."
replace b57 = "6" if b57 == "Attack of wild animals"
replace b57 = "7" if b57 == "Burning of the the house."
replace b57 = "7" if b57 == "Bush fire"
replace b57 = "8" if b57 == "Crop Disease"
replace b57 = "8" if b57 == "Crop diseases"
replace b57 = "13" if b57 == "Crop loss"
replace b57 = "9" if b57 == "DISEASES"
replace b57 = "9" if b57 == "DISEASES ON HUMAN"
replace b57 = "9" if b57 == "DISEASES ON HUMAN BEINGS"
replace b57 = "10" if b57 == "DROUGHT"
replace b57 = "10" if b57 == "DROUHT"
replace b57 = "10" if b57 == "Daught"
replace b57 = "10" if b57 == "Death"
replace b57 = "9" if b57 == "Diseases"
replace b57 = "12" if b57 == "Divorce"
replace b57 = "10" if b57 == "Draught"
replace b57 = "10" if b57 == "Drought"
replace b57 = "10" if b57 == "FLOOD"
replace b57 = "12" if b57 == "Family Divorce"
replace b57 = "10" if b57 == "Flood"
replace b57 = "9" if b57 == "Human disease"
replace b57 = "9" if b57 == "Human disease attack"
replace b57 = "9" if b57 == "Human sickness"
replace b57 = "12" if b57 == "LAND DISPUTE"
replace b57 = "12" if b57 == "LAND WRANGLE"
replace b57 = "12" if b57 == "Land wrangle"
replace b57 = "12" if b57 == "Land wrangle."
replace b57 = "11" if b57 == "Loss of Child"
replace b57 = "11" if b57 == "Loss of afamily member"
replace b57 = "11" if b57 == "Loss of life"
replace b57 = "11" if b57 == "Loss of lifes"
replace b57 = "13" if b57 == "Low crop yield"
replace b57 = "99" if b57 == "None"
replace b57 = "8" if b57 == "PESTS AND DISEASES IN CROPS"
replace b57 = "8" if b57 == "PESTS AND DISEASES ON CROPS"
replace b57 = "14" if b57 == "ROBERY"
replace b57 = "10" if b57 == "STORM"
replace b57 = "12" if b57 == "Shortage of land."
replace b57 = "9" if b57 == "Sickness"
replace b57 = "9" if b57 == "Sickness of child"
replace b57 = "9" if b57 == "Sickness of family"
replace b57 = "1" if b57 == "The first one."
replace b57 = "4" if b57 == "The fourt one"
replace b57 = "4" if b57 == "The fourth one."
replace b57 = "14" if b57 == "Theft of livestocks"
replace b57 = "10" if b57 == "Unbalanced seasonal changes esp. too .."
replace b57 = "10" if b57 == "Unexpected DRYSPELL"
replace b57 = "10" if b57 == "Unexpected PROLONGED DRYSPELL"
replace b57 = "10" if b57 == "Unpredictable SEASON"
replace b57 = "10" if b57 == "Unreliable weather conditions"
replace b57 = "6" if b57 == "WILD ANIMALS"
replace b57 = "7" if b57 == "WILD FIRE"
replace b57 = "6" if b57 == "Wild Animals destroying crop"
replace b57 = "6" if b57 == "Wild animals"
replace b57 = "6" if b57 == "Wild animals destroying  crops"
replace b57 = "6" if b57 == "Wild animals."
replace b57 = "5" if b57 == "accident"
replace b57 = "15" if b57 == "animal deseases"
replace b57 = "15" if b57 == "animal diseases"
replace b57 = "6" if b57 == "attack by elephants"
replace b57 = "9" if b57 == "blindness"
replace b57 = "8" if b57 == "crop diseases"
replace b57 = "8" if b57 == "crop diseases leading to low crop yield"
replace b57 = "12" if b57 == "crop failure"
replace b57 = "12" if b57 == "crop loss"
replace b57 = "8" if b57 == "crop pest and deseases"
replace b57 = "13" if b57 == "crops"
replace b57 = "11" if b57 == "death"
replace b57 = "11" if b57 == "death family member"
replace b57 = "11" if b57 == "death of my relatives is very common"
replace b57 = "11" if b57 == "death,especially fighting over land"
replace b57 = "9" if b57 == "disease"
replace b57 = "12" if b57 == "divorce"
replace b57 = "10" if b57 == "draught"
replace b57 = "10" if b57 == "drought"
replace b57 = "10" if b57 == "droughts"
replace b57 = "12" if b57 == "family wrangle"
replace b57 = "11" if b57 == "fineral"
replace b57 = "10" if b57 == "flood"
replace b57 = "12" if b57 == "gender base violence"
replace b57 = "7" if b57 == "house burning"
replace b57 = "7" if b57 == "house burnning"
replace b57 = "9" if b57 == "huma  sickness/maleria"
replace b57 = "11" if b57 == "human death"
replace b57 = "9" if b57 == "human disease"
replace b57 = "9" if b57 == "human disease attack"
replace b57 = "9" if b57 == "human disease atttack"
replace b57 = "9" if b57 == "human sicknees"
replace b57 = "9" if b57 == "human sickness"
replace b57 = "12" if b57 == "land"
replace b57 = "12" if b57 == "land rwangle"
replace b57 = "13" if b57 == "land wrangle"
replace b57 = "15" if b57 == "livestock diseases"
replace b57 = "11" if b57 == "loss of family member"
replace b57 = "11" if b57 == "loss of lifes"
replace b57 = "11" if b57 == "lost of life"
replace b57 = "13" if b57 == "low crop yield"
replace b57 = "9" if b57 == "madness"
replace b57 = "5" if b57 == "motor accident"
replace b57 = "1" if b57 == "number one"
replace b57 = "8" if b57 == "pest and deseases"
replace b57 = "8" if b57 == "pests abd crop diseases"
replace b57 = "8" if b57 == "pests and diseases"
replace b57 = "13" if b57 == "poor crop yields"
replace b57 = "10" if b57 == "prolonged  and unexpected  dry  spell"
replace b57 = "10" if b57 == "prolonged drought"
replace b57 = "10" if b57 == "prolonged sunshine"
replace b57 = "14" if b57 == "robbery"
replace b57 = "10" if b57 == "seasonal changes"
replace b57 = "9" if b57 == "sickness"
replace b57 = "9" if b57 == "sickness  of family  members"
replace b57 = "9" if b57 == "sickness of family"
replace b57 = "9" if b57 == "sickness of family member"
replace b57 = "9" if b57 == "sickness of family members"
replace b57 = "14" if b57 == "theft"
replace b57 = "10" if b57 == "too much rain"
replace b57 = "10" if b57 == "too much sunshine"
replace b57 = "10" if b57 == "unexpected DRYSPELL"
replace b57 = "10" if b57 == "unfavourable weather"
replace b57 = "10" if b57 == "weather"
replace b57 = "6" if b57 == "wild animals"
replace b57 = "12" if b57 == "witchcraftcy"

destring b57,replace
#delimit ;
label define b57a
5 "Road Accidents"
6 "Attack form the wild animals"
7 "Wildfire destroyed properties"
8 "Crop pests and diseases"
9 "Family member got sick"
10 "Climatic related shocks"
11 "Death of a household member or close relative"
12 "Family disputes"
13 "Crop Failure"
14 "Secuirty challenges leading to theft cases"
15 "Livestock diseases"
16 "Death of Livestock"
99 "None of the shocks"

;
#delimit cr

la values b57 b57a
save "Module B",replace


replace b58a = "7" if b58a == "Ability to continue with cultivation"
replace b58a = "1" if b58a == "access to good health services"
replace b58a = "1" if b58a == "accident makes a person weak to work"
replace b58a = "2" if b58a == "animal"
replace b58a = "2" if b58a == "animal"
replace b58a = "2" if b58a == "animal"
replace b58a = "2" if b58a == "animal"
replace b58a = "2" if b58a == "animals"
replace b58a = "2" if b58a == "animals"
replace b58a = "3" if b58a == "animals destroy all crops"
replace b58a = "4" if b58a == "availability food"
replace b58a = "4" if b58a == "Availability food in house hold will affected."
replace b58a = "4" if b58a == "Availability of food because it becomes hard know when to plant."
replace b58a = "4" if b58a == "availability of food for the household"
replace b58a = "4" if b58a == "Availability of food in house will be affected."
replace b58a = "4" if b58a == "Availability of food in house."
replace b58a = "4" if b58a == "AVAILABILITY OF FOOD IN THE FAMILY"
replace b58a = "4" if b58a == "availability of food in the family"
replace b58a = "4" if b58a == "Availability of food in the house."
replace b58a = "4" if b58a == "Availability of food in the house."
replace b58a = "4" if b58a == "AVAILABILITY OF FOOD IN THE HOUSEHOLD"
replace b58a = "4" if b58a == "AVAILABILITY OF FOOD IN THE HOUSEHOLD"
replace b58a = "4" if b58a == "AVAILABILITY OF FOOD IN THE HOUSEHOLD"
replace b58a = "4" if b58a == "AVAILABILITY OF FOOD IN THE HOUSEHOLD"
replace b58a = "4" if b58a == "Availability of food in the household."
replace b58a = "4" if b58a == "Availability of food items in the house."
replace b58a = "4" if b58a == "Availability of food will affected ."
replace b58a = "4" if b58a == "Availability of food will be affected."
replace b58a = "4" if b58a == "Availability of food will be affected."
replace b58a = "4" if b58a == "availability of food."
replace b58a = "1" if b58a == "can lead to the  loss of lives"
replace b58a = "1" if b58a == "children"
replace b58a = "1" if b58a == "Children"
replace b58a = "1" if b58a == "children"
replace b58a = "1" if b58a == "children"
replace b58a = "1" if b58a == "children"
replace b58a = "5" if b58a == "children education,"
replace b58a = "6" if b58a == "clean sources of water will be affected."
replace b58a = "7" if b58a == "complete crops failure"
replace b58a = "7" if b58a == "crop"
replace b58a = "7" if b58a == "crop"
replace b58a = "7" if b58a == "crop"
replace b58a = "7" if b58a == "crop and livestocks"
replace b58a = "7" if b58a == "Crop fields"
replace b58a = "7" if b58a == "crop production"
replace b58a = "7" if b58a == "crop yield"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "7" if b58a == "crops"
replace b58a = "2" if b58a == "death may result"
replace b58a = "2" if b58a == "death will results"
replace b58a = "7" if b58a == "destroying crops planted"
replace b58a = "7" if b58a == "destroys crops planted in the garden causing low yield"
replace b58a = "8" if b58a == "DEVELOPMENT IN THE COMMUNITY"
replace b58a = "8" if b58a == "disputes among the community"
replace b58a = "1" if b58a == "divorce"
replace b58a = "7" if b58a == "dry up crops"
replace b58a = "5" if b58a == "EDUCATING CHILDREN"
replace b58a = "5" if b58a == "Education"
replace b58a = "5" if b58a == "Education"
replace b58a = "5" if b58a == "Education"
replace b58a = "5" if b58a == "Education"
replace b58a = "5" if b58a == "Education"
replace b58a = "5" if b58a == "Education"
replace b58a = "5" if b58a == "education"
replace b58a = "5" if b58a == "Education"
replace b58a = "5" if b58a == "education"
replace b58a = "5" if b58a == "EDUCATION"
replace b58a = "5" if b58a == "education"
replace b58a = "5" if b58a == "education"
replace b58a = "5" if b58a == "education"
replace b58a = "5" if b58a == "EDUCATION"
replace b58a = "5" if b58a == "education for children"
replace b58a = "5" if b58a == "education for the children"
replace b58a = "5" if b58a == "Education of children"
replace b58a = "5" if b58a == "education of the children"
replace b58a = "5" if b58a == "EDUCATION OF THE CHILDREN"
replace b58a = "5" if b58a == "EDUCATION OF THE CHILDREN"
replace b58a = "5" if b58a == "EDUCATION OF THE CHILDREN"
replace b58a = "5" if b58a == "Education will be affected"
replace b58a = "5" if b58a == "Education will be affected"
replace b58a = "5" if b58a == "Education will be affected because there will no money to pay school fees."
replace b58a = "5" if b58a == "Education will be affected."
replace b58a = "5" if b58a == "Education will be affected."
replace b58a = "5" if b58a == "Education will be affected."
replace b58a = "5" if b58a == "Education will be affected."
replace b58a = "5" if b58a == "Education will be affected."
replace b58a = "5" if b58a == "Education will be affected."
replace b58a = "4" if b58a == "famine"
replace b58a = "4" if b58a == "famine"
replace b58a = "4" if b58a == "famine"
replace b58a = "7" if b58a == "Farm labour"
replace b58a = "7" if b58a == "Farming"
replace b58a = "7" if b58a == "Farming"
replace b58a = "7" if b58a == "Farming activities"
replace b58a = "7" if b58a == "Farming activities,"
replace b58a = "7" if b58a == "farming activities."
replace b58a = "7" if b58a == "Financial breakdown"
replace b58a = "9" if b58a == "food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "Food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "food"
replace b58a = "4" if b58a == "food availability"
replace b58a = "4" if b58a == "Food availability"
replace b58a = "4" if b58a == "Food availability"
replace b58a = "4" if b58a == "Food availability"
replace b58a = "4" if b58a == "Food availability"
replace b58a = "4" if b58a == "Food availability will be low"
replace b58a = "4" if b58a == "food availability,"
replace b58a = "7" if b58a == "Food crops"
replace b58a = "7" if b58a == "Food crops"
replace b58a = "7" if b58a == "Food crops"
replace b58a = "7" if b58a == "Food crops"
replace b58a = "4" if b58a == "Food for the household"
replace b58a = "4" if b58a == "Food for the household"
replace b58a = "4" if b58a == "food insecurity due to low harvest"
replace b58a = "4" if b58a == "food items in the house will always be wasted in fu eral services"
replace b58a = "4" if b58a == "food production"
replace b58a = "4" if b58a == "food production"
replace b58a = "4" if b58a == "food production,"
replace b58a = "4" if b58a == "food security,"
replace b58a = "4" if b58a == "Food stability"
replace b58a = "4" if b58a == "Food stability"
replace b58a = "4" if b58a == "Food stock"
replace b58a = "4" if b58a == "Food."
replace b58a = "4" if b58a == "Food."
replace b58a = "4" if b58a == "Food."
replace b58a = "4" if b58a == "Foodstuffs"
replace b58a = "4" if b58a == "Foodstuffs"
replace b58a = "1" if b58a == "happiness in the home"
replace b58a = "1" if b58a == "Health"
replace b58a = "1" if b58a == "health"
replace b58a = "1" if b58a == "Health"
replace b58a = "1" if b58a == "Health"
replace b58a = "1" if b58a == "Health"
replace b58a = "1" if b58a == "Health"
replace b58a = "1" if b58a == "HEALTH"
replace b58a = "1" if b58a == "health"
replace b58a = "1" if b58a == "HEALTH"
replace b58a = "1" if b58a == "HEALTH"
replace b58a = "1" if b58a == "health"
replace b58a = "1" if b58a == "Health"
replace b58a = "1" if b58a == "HEALTH"
replace b58a = "1" if b58a == "HEALTH OF THE FAMILY MEMBERS"
replace b58a = "1" if b58a == "health of the family members"
replace b58a = "1" if b58a == "HEALTH OF THE HOUSEHOLD MEMBERS"
replace b58a = "1" if b58a == "HEALTH OF THE HOUSEHOLD MEMBERS"
replace b58a = "1" if b58a == "HEALTH OF THE HOUSEHOLD MEMBERS"
replace b58a = "1" if b58a == "Health."
replace b58a = "1" if b58a == "Health."
replace b58a = "1" if b58a == "healthy family"
replace b58a = "1" if b58a == "HEALTHY FAMILY"
replace b58a = "7" if b58a == "high chances of little or no harvest for the crops currently in the gardens"
replace b58a = "1" if b58a == "House"
replace b58a = "1" if b58a == "house burning"
replace b58a = "4" if b58a == "House hold food availability"
replace b58a = "4" if b58a == "Household food availability"
replace b58a = "4" if b58a == "Household food availability"
replace b58a = "4" if b58a == "Household food availability"
replace b58a = "4" if b58a == "Household food availability"
replace b58a = "4" if b58a == "Household food availability"
replace b58a = "9" if b58a == "Household income"
replace b58a = "1" if b58a == "human beeing"
replace b58a = "1" if b58a == "human being"
replace b58a = "1" if b58a == "HUMAN HEALTH"
replace b58a = "1" if b58a == "HUMAN HEALTH"
replace b58a = "1" if b58a == "human health"
replace b58a = "1" if b58a == "HUMAN HEALTH"
replace b58a = "1" if b58a == "Human life"
replace b58a = "1" if b58a == "human life i.e. death"
replace b58a = "1" if b58a == "Human lifes"
replace b58a = "1" if b58a == "human lives"
replace b58a = "4" if b58a == "hunger"
replace b58a = "4" if b58a == "Hunger"
replace b58a = "4" if b58a == "hunger"
replace b58a = "4" if b58a == "hunger"
replace b58a = "2" if b58a == "I will livestock farming."
replace b58a = "7" if b58a == "if you are admitted,  all that is i  the garden is wasted"
replace b58a = "7" if b58a == "inability to dig next season"
replace b58a = "7" if b58a == "inability to suppot home with agricultural activities"
replace b58a = "7" if b58a == "inadequate harvest of agricultural products"
replace b58a = "7" if b58a == "incase she is sick, farming and doing other domestic activities will be low leading to low productio"
replace b58a = "9" if b58a == "income"
replace b58a = "9" if b58a == "Income source"
replace b58a = "9" if b58a == "it can cause total loss"
replace b58a = "7" if b58a == "it can destroy all the crops in the garden"
replace b58a = "1" if b58a == "it can lead to death"
replace b58a = "1" if b58a == "it causes body weakness"
replace b58a = "1" if b58a == "it causes losses since it destroys crops which is meant to earn income"
replace b58a = "7" if b58a == "it destroys almost all crops in the garden unlike rain sometimes"
replace b58a = "7" if b58a == "it destroys crops from the garden"
replace b58a = "1" if b58a == "it disorganises a person's thinking after loosing a dear one"
replace b58a = "9" if b58a == "it increases the rate of borrowing money"
replace b58a = "7" if b58a == "it limits production due to less labour available"
replace b58a = "7" if b58a == "it makes a person became lazy since there is always less hope that the crop will yield well"
replace b58a = "7" if b58a == "it reduces energy to do production"
replace b58a = "7" if b58a == "it requires more money to always pay for treatments"
replace b58a = "9" if b58a == "It waste time for doing farm work"
replace b58a = "7" if b58a == "it wastes a lot of things like food in the house for feeding"
replace b58a = "7" if b58a == "it wastes a lot of time of doing productive work"
replace b58a = "7" if b58a == "it wastes food items and assets"
replace b58a = "9" if b58a == "it will affect our road"
replace b58a = "8" if b58a == "Land"
replace b58a = "8" if b58a == "land"
replace b58a = "8" if b58a == "Land"
replace b58a = "8" if b58a == "land"
replace b58a = "8" if b58a == "land"
replace b58a = "8" if b58a == "land"
replace b58a = "9" if b58a == "leads to poverty due to wasting of the food items and income in the house"
replace b58a = "5" if b58a == "level of education will be affected because many will drop out from school since no one will pay the"
replace b58a = "1" if b58a == "Life ."
replace b58a = "1" if b58a == "Life can be affected the most this can even kill."
replace b58a = "1" if b58a == "life."
replace b58a = "7" if b58a == "limited labour"
replace b58a = "7" if b58a == "limited new crop varieties"
replace b58a = "9" if b58a == "limited source of income"
replace b58a = "9" if b58a == "little harvest"
replace b58a = "2" if b58a == "live"
replace b58a = "2" if b58a == "Livestock"
replace b58a = "2" if b58a == "livestock"
replace b58a = "2" if b58a == "LIVESTOCK"
replace b58a = "2" if b58a == "livestock"
replace b58a = "7" if b58a == "may not be able to dig again because because the leg is taking long to heal  hence famine will resul"
replace b58a = "1" if b58a == "my marriage will affected"
replace b58a = "8" if b58a == "peace"
replace b58a = "8" if b58a == "peace in the community"
replace b58a = "8" if b58a == "peace in the community"
replace b58a = "8" if b58a == "PEACE IN THE COMMUNITY DUE TO LAND DISPUTE"
replace b58a = "8" if b58a == "PEACE IN THE FAMILY AS A RESULT OF DEATH"
replace b58a = "8" if b58a == "people"
replace b58a = "8" if b58a == "people"
replace b58a = "8" if b58a == "people"
replace b58a = "8" if b58a == "people"
replace b58a = "8" if b58a == "people"
replace b58a = "8" if b58a == "people"
replace b58a = "8" if b58a == "people health"
replace b58a = "8" if b58a == "person lost is gone forever and you can not see again"
replace b58a = "8" if b58a == "Roads will be affected so much."
replace b58a = "5" if b58a == "school drop out"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees"
replace b58a = "5" if b58a == "School fees."
replace b58a = "5" if b58a == "School fees."
replace b58a = "5" if b58a == "school fees."
replace b58a = "5" if b58a == "School fees/education"
replace b58a = "5" if b58a == "selling of food items"
replace b58a = "4" if b58a == "Shelter"
replace b58a = "5" if b58a == "Shool fees."
replace b58a = "6" if b58a == "shortage of drinking water for both human and livestock"
replace b58a = "1" if b58a == "some of the people you are meant to stay with passes on and creates hardship in life"
replace b58a = "1" if b58a == "some of them causes madness because a kid is getting mad"
replace b58a = "6" if b58a == "sources of clean water will be affected."
replace b58a = "1" if b58a == "spend a lot in the hospital so that the person servives"
replace b58a = "5" if b58a == "the  childrens Education"
replace b58a = "8" if b58a == "theft will result in The community"
replace b58a = "7" if b58a == "there will be no energy to work"
replace b58a = "8" if b58a == "there will be no land for production"
replace b58a = "1" if b58a == "This can affect life."
replace b58a = "8" if b58a == "This can affect the life of the community because it will lead to lost of life."
replace b58a = "8" if b58a == "This will affect population because many will loose life."
replace b58a = "8" if b58a == "This will affect the road."
replace b58a = "6" if b58a == "water"
replace b58a = "6" if b58a == "water"
replace b58a = "99" if b58a == "y"
replace b58a = "7" if b58a == "you can not have energy to work"
replace b58a = "4" if b58a == "you sell what you are meant to cook"
replace b58a = "9" if b58a == "you will have to sell livestock"


destring b58a,replace
#delimit ;
label define b58a
1 "Health of household members"
2 "Perfomance of livestock"
3 "Protection from wild animals"
4 "Availability of food"
5 "Education of children"
6 "Destruction of water catchment areas"
7 "Perfomance of crops"
8 "Peace and development in the community"
9 "Stability of household income"
99 "Not Applicable"
;
#delimit cr

la values b58a b58a
save "Module B",replace


replace b58b = "1" if b58b == "a person can not raise enough money after being weak"
replace b58b = "2" if b58b == "Adopted Children"
replace b58b = "2" if b58b == "affording health services"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animal"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals"
replace b58b = "3" if b58b == "animals be affected most due to lack feed"
replace b58b = "3" if b58b == "animals can be sold"
replace b58b = "3" if b58b == "Animals grazing ground"
replace b58b = "4" if b58b == "Availability of food"
replace b58b = "4" if b58b == "Availability of food"
replace b58b = "4" if b58b == "availability of food for the household"
replace b58b = "4" if b58b == "availability of food in the family"
replace b58b = "4" if b58b == "AVAILABILITY OF FOOD IN THE FAMILY"
replace b58b = "4" if b58b == "AVAILABILITY OF FOOD IN THE FAMILY"
replace b58b = "4" if b58b == "availability of food in the family"
replace b58b = "4" if b58b == "Availability of food in the house."
replace b58b = "4" if b58b == "Availability of food in the house."
replace b58b = "4" if b58b == "availability of food in the household"
replace b58b = "4" if b58b == "AVAILABILITY OF FOOD IN THE HOUSEHOLD"
replace b58b = "4" if b58b == "Availability of food items."
replace b58b = "4" if b58b == "Availability of food will be affected"
replace b58b = "4" if b58b == "Availability of food will be affected also."
replace b58b = "4" if b58b == "Availability of food will be affected because if you are weak getting food becomes hard."
replace b58b = "4" if b58b == "Business."
replace b58b = "1" if b58b == "bussiness"
replace b58b = "1" if b58b == "cash crop"
replace b58b = "5" if b58b == "cassava"
replace b58b = "6" if b58b == "Casual work in other people's farms will also be low"
replace b58b = "6" if b58b == "causes too much worry leading to low production"
replace b58b = "7" if b58b == "children will not study"
replace b58b = "2" if b58b == "Clothing"
replace b58b = "5" if b58b == "crop"
replace b58b = "5" if b58b == "crop"
replace b58b = "5" if b58b == "crop"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "crops"
replace b58b = "5" if b58b == "Crops in the field"
replace b58b = "8" if b58b == "disturbing people and sometimes they can kill people"
replace b58b = "5" if b58b == "drought"
replace b58b = "9" if b58b == "economic activities in the community"
replace b58b = "7" if b58b == "Edducation"
replace b58b = "7" if b58b == "educating children innthe household"
replace b58b = "7" if b58b == "Education"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "Education"
replace b58b = "7" if b58b == "Education"
replace b58b = "7" if b58b == "Education"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "EDUCATION"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "EDUCATION"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "education"
replace b58b = "7" if b58b == "Education"
replace b58b = "7" if b58b == "EDUCATION"
replace b58b = "7" if b58b == "Education can be affected because if you weak getting school fees becomes problem."
replace b58b = "7" if b58b == "education for children"
replace b58b = "7" if b58b == "education for the children"
replace b58b = "7" if b58b == "education for the children"
replace b58b = "7" if b58b == "EDUCATION FOR THE CHILDREN"
replace b58b = "7" if b58b == "education for the children"
replace b58b = "7" if b58b == "EDUCATION IN THE COMMUNITY"
replace b58b = "7" if b58b == "EDUCATION OF THE CHILDREN"
replace b58b = "7" if b58b == "EDUCATION OF THE CHILDREN"
replace b58b = "7" if b58b == "education of the children"
replace b58b = "7" if b58b == "education of the children"
replace b58b = "7" if b58b == "Education will be affected"
replace b58b = "7" if b58b == "Education will be affected because if you don't have money or food you can't go to school."
replace b58b = "7" if b58b == "Education will be affected because if you don't have money to pay school fees you drop out."
replace b58b = "7" if b58b == "Education will be affected because pupils will drop out from school."
replace b58b = "7" if b58b == "Education will be affected too."
replace b58b = "7" if b58b == "Education will be affected."
replace b58b = "7" if b58b == "Education will be affected."
replace b58b = "7" if b58b == "Education will be affected."
replace b58b = "7" if b58b == "Education will be affected."
replace b58b = "7" if b58b == "Education will be affected."
replace b58b = "7" if b58b == "Education will be affected."
replace b58b = "4" if b58b == "famine"
replace b58b = "4" if b58b == "famine"
replace b58b = "4" if b58b == "famine"
replace b58b = "6" if b58b == "Farm Labour"
replace b58b = "6" if b58b == "farming"
replace b58b = "1" if b58b == "Finance"
replace b58b = "1" if b58b == "Finance of the home"
replace b58b = "1" if b58b == "Financial breakdown"
replace b58b = "1" if b58b == "Financial stability"
replace b58b = "1" if b58b == "Financial stand of the home"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "food"
replace b58b = "4" if b58b == "food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "Food"
replace b58b = "4" if b58b == "food"
replace b58b = "4" if b58b == "food"
replace b58b = "4" if b58b == "FOOD"
replace b58b = "4" if b58b == "Food availability"
replace b58b = "4" if b58b == "Food availability"
replace b58b = "4" if b58b == "Food availability"
replace b58b = "4" if b58b == "food availability"
replace b58b = "4" if b58b == "Food in the household"
replace b58b = "4" if b58b == "food items"
replace b58b = "4" if b58b == "food items plus livestock are used for funeral causing hunger"
replace b58b = "4" if b58b == "food production"
replace b58b = "4" if b58b == "food scarcity will be the biggest problem"
replace b58b = "4" if b58b == "food security"
replace b58b = "4" if b58b == "Food stuff."
replace b58b = "4" if b58b == "food will not be  available due to less yield"
replace b58b = "4" if b58b == "Food."
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "Health"
replace b58b = "2" if b58b == "Health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "Health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "health"
replace b58b = "2" if b58b == "HEALTH"
replace b58b = "2" if b58b == "health and happiness"
replace b58b = "2" if b58b == "Health care"
replace b58b = "2" if b58b == "health in the household"
replace b58b = "2" if b58b == "health of family  members"
replace b58b = "2" if b58b == "health of hh members"
replace b58b = "2" if b58b == "Health of household members"
replace b58b = "2" if b58b == "HEALTH OF THE HOUSEHOLD MEMBERS"
replace b58b = "2" if b58b == "HEALTH OF THE HOUSEHOLD MEMBERS"
replace b58b = "2" if b58b == "HEALTH OF THE HOUSEHOLD MEMBERS"
replace b58b = "2" if b58b == "Health."
replace b58b = "2" if b58b == "health."
replace b58b = "2" if b58b == "Health."
replace b58b = "2" if b58b == "Health/ medical bills"
replace b58b = "2" if b58b == "Health/treatment"
replace b58b = "1" if b58b == "Home stability"
replace b58b = "1" if b58b == "Home stability"
replace b58b = "1" if b58b == "Household income"
replace b58b = "2" if b58b == "human beeing"
replace b58b = "2" if b58b == "human beeing"
replace b58b = "2" if b58b == "human beeing"
replace b58b = "2" if b58b == "HUMAN HEALTH"
replace b58b = "2" if b58b == "Human life"
replace b58b = "4" if b58b == "hunger"
replace b58b = "4" if b58b == "Hunger"
replace b58b = "4" if b58b == "Hunger"
replace b58b = "4" if b58b == "Hunger"
replace b58b = "4" if b58b == "Hunger"
replace b58b = "4" if b58b == "hunger"
replace b58b = "4" if b58b == "hunger due to less food available"
replace b58b = "4" if b58b == "I can also affect our life."
replace b58b = "7" if b58b == "Ievel of school drop out will increase."
replace b58b = "7" if b58b == "If this continue then education will be affected because there will be no money to pay children at s"
replace b58b = "2" if b58b == "inability to resist disease attack as people will be so weak"
replace b58b = "1" if b58b == "Income generation will be a problem since there is no where to farm"
replace b58b = "1" if b58b == "income saved will be used"
replace b58b = "7" if b58b == "increase in the number of schools drop out"
replace b58b = "8" if b58b == "it causes a lot of fear because it can kill"
replace b58b = "4" if b58b == "it causes food scarcity because of low food production"
replace b58b = "4" if b58b == "it causes low production due to time spent in funeral service"
replace b58b = "6" if b58b == "it leads to food scarcity due to very little harvest"
replace b58b = "6" if b58b == "it prevents someone from doing productive work"
replace b58b = "6" if b58b == "it reduces energy to perform production"
replace b58b = "6" if b58b == "it reduces labour availability in the household"
replace b58b = "6" if b58b == "it reduces level production because of less labour availability"
replace b58b = "6" if b58b == "labour availability is reduced if a big person is lost"
replace b58b = "6" if b58b == "lack of famiyl labour"
replace b58b = "6" if b58b == "lack of joined responsibilities"
replace b58b = "1" if b58b == "lack of money"
replace b58b = "5" if b58b == "Land"
replace b58b = "7" if b58b == "level education come down because many will drop out."
replace b58b = "1" if b58b == "level of income"
replace b58b = "2" if b58b == "Life of the children."
replace b58b = "2" if b58b == "Life will also be affected."
replace b58b = "2" if b58b == "life."
replace b58b = "1" if b58b == "little income is got as a result of low yield"
replace b58b = "3" if b58b == "Livestock"
replace b58b = "3" if b58b == "livestock"
replace b58b = "3" if b58b == "livestock"
replace b58b = "3" if b58b == "livestock"
replace b58b = "3" if b58b == "Livestock Feeds"
replace b58b = "3" if b58b == "livestock feeds"
replace b58b = "3" if b58b == "livestocks"
replace b58b = "3" if b58b == "Livestocks"
replace b58b = "3" if b58b == "livestocks"
replace b58b = "2" if b58b == "Loss of more lifes"
replace b58b = "2" if b58b == "Lost of life."
replace b58b = "2" if b58b == "maleria can results to death"
replace b58b = "2" if b58b == "marriage"
replace b58b = "1" if b58b == "Money"
replace b58b = "1" if b58b == "Money"
replace b58b = "1" if b58b == "money is spent in treatment"
replace b58b = "1" if b58b == "money will be spent for treatment"
replace b58b = "1" if b58b == "Money."
replace b58b = "1" if b58b == "more assets may be sold off in trying to recover"
replace b58b = "7" if b58b == "Number school drop out will increase."
replace b58b = "1" if b58b == "organising funeral services causes poverty due to use of all the available money"
replace b58b = "3" if b58b == "pasture wilts and animals looses body weight"
replace b58b = "3" if b58b == "paultry"
replace b58b = "3" if b58b == "paultry"
replace b58b = "7" if b58b == "paying school fees"
replace b58b = "9" if b58b == "PEACE"
replace b58b = "9" if b58b == "peace in the community"
replace b58b = "9" if b58b == "peace in the community"
replace b58b = "9" if b58b == "peace in the community"
replace b58b = "9" if b58b == "PEACE IN THE FAMILY"
replace b58b = "9" if b58b == "PEACE IN THE FAMILY"
replace b58b = "9" if b58b == "peace in yhe community"
replace b58b = "9" if b58b == "people"
replace b58b = "9" if b58b == "people"
replace b58b = "9" if b58b == "people"
replace b58b = "9" if b58b == "people"
replace b58b = "1" if b58b == "poor household income generation since we depend on agriculture"
replace b58b = "10" if b58b == "possess  big threat of water shortages asall the wells will dry off"
replace b58b = "9" if b58b == "poverty erradication will not be easy"
replace b58b = "2" if b58b == "Properties and Lifes"
replace b58b = "7" if b58b == "pying fees becomes a challenge due to low harvest"
replace b58b = "9" if b58b == "Roads will also be affected as a result of too much rain."
replace b58b = "5" if b58b == "Saved seeds"
replace b58b = "5" if b58b == "saving"
replace b58b = "1" if b58b == "savings will also reduce since most savings will go to the hsopital"
replace b58b = "1" if b58b == "school drop out"
replace b58b = "7" if b58b == "school drop out"
replace b58b = "7" if b58b == "school drop out will increase"
replace b58b = "7" if b58b == "school fees"
replace b58b = "7" if b58b == "School fees"
replace b58b = "7" if b58b == "school fees"
replace b58b = "7" if b58b == "School fees"
replace b58b = "7" if b58b == "School fees"
replace b58b = "7" if b58b == "School fees"
replace b58b = "7" if b58b == "school fees"
replace b58b = "7" if b58b == "School fees."
replace b58b = "5" if b58b == "Seeds availability"
replace b58b = "1" if b58b == "selling of livestock"
replace b58b = "2" if b58b == "Shelter"
replace b58b = "2" if b58b == "Shelter"
replace b58b = "2" if b58b == "Shelter"
replace b58b = "2" if b58b == "Shelter"
replace b58b = "2" if b58b == "Shelter."
replace b58b = "2" if b58b == "Shelter."
replace b58b = "1" if b58b == "Since there will no money in the house hold, education level will be affected."
replace b58b = "5" if b58b == "Soil damage"
replace b58b = "1" if b58b == "the little savings is used for funeral service"
replace b58b = "2" if b58b == "there is subsequent pain everyday"
replace b58b = "7" if b58b == "This can affect our life ."
replace b58b = "7" if b58b == "This will also affect the education because children will not go to school when it flooded every whe"
replace b58b = "6" if b58b == "time for productionis wasted in taking care of the patient"
replace b58b = "99" if b58b == "u"
replace b58b = "10" if b58b == "water"
replace b58b = "10" if b58b == "water sometimes dries up"
replace b58b = "10" if b58b == "Water sources will dry."
replace b58b = "10" if b58b == "Water sources."
replace b58b = "9" if b58b == "weakening the relationship with the neighbours due to over begging for helps"
replace b58b = "1" if b58b == "weakness that may lead o inability to work hard for a living"
replace b58b = "9" if b58b == "Will affect the population growth."
replace b58b = "9" if b58b == "will lead to domestic violence"
replace b58b = "6" if b58b == "work rate reduces due to sickness and support needed for the patient"
replace b58b = "2" if b58b == "worry about other family members"
replace b58b = "1" if b58b == "you also spend your savings in buying pesticides"
replace b58b = "1" if b58b == "you can not work to get money"
replace b58b = "1" if b58b == "you spend a lot of money"
replace b58b = "1" if b58b == "you spend money in the hospital treating a patient"
replace b58b = "6" if b58b == "you will waste time taking care of the sick"

destring b58b,replace
#delimit ;
label define b58b
1 "Stability of household income"
2 "Health of household members"
3 "Perfomance of livestock"
4 "Availability of food"
5 "Perfomance of crops"
6 "Quality of farm labour"
7 "Education of children"
8 "Protection from wild animals"
9 "Peace and development in the community"
10 "Destruction of water catchment areas"
99 "Not Applicable"
;
#delimit cr

la values b58b b58b
save "Module B",replace



replace b58c = "1" if b58c == "a lot of money is spent in funeral service"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animal"
replace b58c = "2" if b58c == "animals"
replace b58c = "2" if b58c == "animals"
replace b58c = "2" if b58c == "animals"
replace b58c = "2" if b58c == "animals  loss"
replace b58c = "2" if b58c == "Animals will be affected."
replace b58c = "2" if b58c == "animals/livestocks"
replace b58c = "1" if b58c == "assets"
replace b58c = "4" if b58c == "Availability of food ."
replace b58c = "4" if b58c == "Availability of food also will be affected crops are always destroyed."
replace b58c = "4" if b58c == "Availability of food and security in households."
replace b58c = "4" if b58c == "availability of food for the family"
replace b58c = "4" if b58c == "availability of food in the community"
replace b58c = "4" if b58c == "AVAILABILITY OF FOOD IN THE FAMILY"
replace b58c = "4" if b58c == "availability of food in the family"
replace b58c = "4" if b58c == "availability of food in the household"
replace b58c = "4" if b58c == "Availability of food in the household."
replace b58c = "4" if b58c == "Availability of food in the household."
replace b58c = "4" if b58c == "Availability of food will affected."
replace b58c = "4" if b58c == "Availability of food will also be affected."
replace b58c = "4" if b58c == "availability of foods in the family"
replace b58c = "5" if b58c == "availability of seeds"
replace b58c = "1" if b58c == "basic needs eg clothing"
replace b58c = "1" if b58c == "business"
replace b58c = "3" if b58c == "chicken"
replace b58c = "3" if b58c == "children"
replace b58c = "2" if b58c == "Children welfare"
replace b58c = "2" if b58c == "Children welfare"
replace b58c = "2" if b58c == "Children's education"
replace b58c = "2" if b58c == "childrens life"
replace b58c = "2" if b58c == "clothing"
replace b58c = "2" if b58c == "Clothing"
replace b58c = "2" if b58c == "constant stress / no happiness in the family"
replace b58c = "5" if b58c == "crop"
replace b58c = "5" if b58c == "crop"
replace b58c = "5" if b58c == "crops"
replace b58c = "5" if b58c == "crops"
replace b58c = "5" if b58c == "crops"
replace b58c = "9" if b58c == "depopulation"
replace b58c = "9" if b58c == "development of the household in terms of economic activities"
replace b58c = "9" if b58c == "divorce will be very common"
replace b58c = "1" if b58c == "ECONOMIC GROWTH OF THE HOUSEHOLD"
replace b58c = "7" if b58c == "EDUCATING THE CHILDREN"
replace b58c = "7" if b58c == "education"
replace b58c = "7" if b58c == "education"
replace b58c = "7" if b58c == "education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "education"
replace b58c = "7" if b58c == "Education"
replace b58c = "7" if b58c == "EDUCATION"
replace b58c = "7" if b58c == "EDUCATION"
replace b58c = "7" if b58c == "EDUCATION FOR THE CHILDREN"
replace b58c = "7" if b58c == "education for the children"
replace b58c = "7" if b58c == "education growth"
replace b58c = "7" if b58c == "education of children"
replace b58c = "7" if b58c == "EDUCATION OF THE CHILDREN"
replace b58c = "7" if b58c == "education of the children"
replace b58c = "7" if b58c == "education of the children"
replace b58c = "7" if b58c == "EDUCATION OF THE CHILDREN"
replace b58c = "7" if b58c == "Education will be affected"
replace b58c = "7" if b58c == "Education will be affected so much"
replace b58c = "7" if b58c == "Education."
replace b58c = "4" if b58c == "extreme famine"
replace b58c = "4" if b58c == "famine will result"
replace b58c = "6" if b58c == "Farm input sourcing"
replace b58c = "6" if b58c == "farm labour"
replace b58c = "6" if b58c == "Farm labour"
replace b58c = "6" if b58c == "Farm labour"
replace b58c = "6" if b58c == "farm labour"
replace b58c = "6" if b58c == "Farm labour"
replace b58c = "6" if b58c == "Farmily stability"
replace b58c = "6" if b58c == "Farming"
replace b58c = "6" if b58c == "FARMING"
replace b58c = "6" if b58c == "Farming."
replace b58c = "7" if b58c == "fee defaults for the school going children"
replace b58c = "1" if b58c == "Finance of the home"
replace b58c = "1" if b58c == "Financial stability"
replace b58c = "1" if b58c == "Financial stability of the home"
replace b58c = "4" if b58c == "Food"
replace b58c = "4" if b58c == "Food"
replace b58c = "4" if b58c == "Food"
replace b58c = "4" if b58c == "Food"
replace b58c = "4" if b58c == "Food"
replace b58c = "4" if b58c == "Food"
replace b58c = "4" if b58c == "Food"
replace b58c = "4" if b58c == "food"
replace b58c = "4" if b58c == "food"
replace b58c = "4" if b58c == "food availability will be low"
replace b58c = "4" if b58c == "food crop"
replace b58c = "4" if b58c == "food in the house becomes little because you can not produce enough"
replace b58c = "4" if b58c == "food insecurity due to little harvest"
replace b58c = "4" if b58c == "food production becomes low causing hunger"
replace b58c = "4" if b58c == "food scarcity due selling lf some food items"
replace b58c = "4" if b58c == "food security"
replace b58c = "4" if b58c == "food security."
replace b58c = "4" if b58c == "Food."
replace b58c = "2" if b58c == "general family health"
replace b58c = "2" if b58c == "grinding machine"
replace b58c = "2" if b58c == "health"
replace b58c = "2" if b58c == "health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health"
replace b58c = "2" if b58c == "Health care"
replace b58c = "2" if b58c == "Health care"
replace b58c = "2" if b58c == "health care"
replace b58c = "2" if b58c == "health of the family members"
replace b58c = "2" if b58c == "HEALTH OF THE FAMILY MEMBERS"
replace b58c = "2" if b58c == "health of the household members"
replace b58c = "5" if b58c == "high yielding of crops"
replace b58c = "5" if b58c == "house"
replace b58c = "1" if b58c == "house"
replace b58c = "1" if b58c == "household income"
replace b58c = "1" if b58c == "houses"
replace b58c = "1" if b58c == "houses"
replace b58c = "2" if b58c == "human beeing"
replace b58c = "2" if b58c == "human beeing"
replace b58c = "2" if b58c == "human beeing"
replace b58c = "2" if b58c == "human beeing"
replace b58c = "2" if b58c == "human beeing"
replace b58c = "2" if b58c == "human being"
replace b58c = "2" if b58c == "human being"
replace b58c = "2" if b58c == "human health"
replace b58c = "2" if b58c == "HUMAN HEALTH"
replace b58c = "2" if b58c == "HUMAN HEALTH"
replace b58c = "2" if b58c == "Human lifes"
replace b58c = "2" if b58c == "human lives"
replace b58c = "2" if b58c == "human lives"
replace b58c = "4" if b58c == "Hunger"
replace b58c = "4" if b58c == "Hunger"
replace b58c = "4" if b58c == "Hunger"
replace b58c = "4" if b58c == "Hunger"
replace b58c = "4" if b58c == "Hunger"
replace b58c = "4" if b58c == "Hunger"
replace b58c = "4" if b58c == "hunger"
replace b58c = "4" if b58c == "hunger also due to selling and using of stored food"
replace b58c = "4" if b58c == "I will also affect the present of food in the house."
replace b58c = "1" if b58c == "income"
replace b58c = "1" if b58c == "income"
replace b58c = "1" if b58c == "Income source"
replace b58c = "1" if b58c == "Income will also be low"
replace b58c = "9" if b58c == "insecurity. like for me any bad person can easily  attack me."
replace b58c = "3" if b58c == "It also affect our livestock."
replace b58c = "3" if b58c == "it also causes depression in livestock body size due to drying of pasture"
replace b58c = "1" if b58c == "it brings poverty due to low energy to make money"
replace b58c = "2" if b58c == "It can also affect our good life."
replace b58c = "2" if b58c == "It can also affect our life."
replace b58c = "2" if b58c == "it can lead to death since people do kill others because of land"
replace b58c = "2" if b58c == "It can lead to sickness especially due to stress"
replace b58c = "2" if b58c == "it causes confusion in decision making when a loved one person is lost"
replace b58c = "4" if b58c == "it causes food scarcity"
replace b58c = "4" if b58c == "it causes poverty due to low yield"
replace b58c = "1" if b58c == "it will affect marriage since nothing is there in the house."
replace b58c = "6" if b58c == "Labour for male related tasks"
replace b58c = "1" if b58c == "lack of money will be the biggest problem"
replace b58c = "6" if b58c == "lacked of shared responsibility in the family"
replace b58c = "1" if b58c == "Land"
replace b58c = "1" if b58c == "Land"
replace b58c = "1" if b58c == "land"
replace b58c = "1" if b58c == "land"
replace b58c = "7" if b58c == "Level of education will be affected."
replace b58c = "2" if b58c == "life"
replace b58c = "2" if b58c == "Life can also be affected because you become weak and even die when you don't eat enough."
replace b58c = "2" if b58c == "Life will also be affected because you become weak and even die."
replace b58c = "2" if b58c == "Life will also be affected."
replace b58c = "2" if b58c == "life."
replace b58c = "1" if b58c == "little income"
replace b58c = "3" if b58c == "livestock"
replace b58c = "3" if b58c == "livestock"
replace b58c = "3" if b58c == "livestock number reduces becauses you have to kill them"
replace b58c = "1" if b58c == "low production and low food avia6in tne house"
replace b58c = "1" if b58c == "low production causes little income hence poverty"
replace b58c = "6" if b58c == "man power will be limited."
replace b58c = "2" if b58c == "marriage"
replace b58c = "2" if b58c == "marriage"
replace b58c = "2" if b58c == "Marriage will also be affected."
replace b58c = "2" if b58c == "Marriage will be affected."
replace b58c = "1" if b58c == "Money"
replace b58c = "1" if b58c == "Money"
replace b58c = "1" if b58c == "Money"
replace b58c = "1" if b58c == "money is spent in organising funeral service"
replace b58c = "1" if b58c == "Money saved is wasted in paying hospital bills"
replace b58c = "1" if b58c == "Money."
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "None"
replace b58c = "99" if b58c == "NONE"
replace b58c = "99" if b58c == "none"
replace b58c = "99" if b58c == "none"
replace b58c = "1" if b58c == "other necessary household items"
replace b58c = "1" if b58c == "over dependency and limited family labour force"
replace b58c = "3" if b58c == "paultry"
replace b58c = "3" if b58c == "paultry"
replace b58c = "3" if b58c == "paultry"
replace b58c = "3" if b58c == "paultry"
replace b58c = "3" if b58c == "paultry"
replace b58c = "7" if b58c == "paying students at school won't be easy"
replace b58c = "9" if b58c == "peace in the community"
replace b58c = "9" if b58c == "PEACE IN THE COMMUNITY"
replace b58c = "9" if b58c == "peace in the community"
replace b58c = "9" if b58c == "peace in the community"
replace b58c = "9" if b58c == "peace in the community as the result of land Wrangle"
replace b58c = "9" if b58c == "peace in the community due to lost of lives"
replace b58c = "9" if b58c == "peace in the family"
replace b58c = "9" if b58c == "peace in the family"
replace b58c = "9" if b58c == "PEACE IN THE FAMILY"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people"
replace b58c = "2" if b58c == "people taking of the patient worries a lot leading to reduced production"
replace b58c = "2" if b58c == "people will die of hunger"
replace b58c = "2" if b58c == "person"
replace b58c = "2" if b58c == "persons"
replace b58c = "2" if b58c == "poor health in the family"
replace b58c = "2" if b58c == "poor health/regular illness as we can't afford better treatment at the hospital"
replace b58c = "3" if b58c == "REDUCTION IN THE NUMBER OF LIVESTOCK"
replace b58c = "6" if b58c == "reductions in the level of farming"
replace b58c = "9" if b58c == "road"
replace b58c = "9" if b58c == "Road will also be affected due to heavy rainfall."
replace b58c = "9" if b58c == "Road will be destroyed"
replace b58c = "1" if b58c == "savings that will be lost all"
replace b58c = "7" if b58c == "school drop out rate will be high"
replace b58c = "7" if b58c == "school fees"
replace b58c = "7" if b58c == "School fees"
replace b58c = "7" if b58c == "School fees"
replace b58c = "7" if b58c == "school fees"
replace b58c = "7" if b58c == "school fees"
replace b58c = "7" if b58c == "School fees"
replace b58c = "9" if b58c == "security"
replace b58c = "2" if b58c == "Shelter"
replace b58c = "2" if b58c == "Shelter"
replace b58c = "2" if b58c == "Shelter"
replace b58c = "2" if b58c == "shelter."
replace b58c = "2" if b58c == "Shelter."
replace b58c = "6" if b58c == "shortage of labor for farms work"
replace b58c = "2" if b58c == "sickness may result due to poor feeding"
replace b58c = "4" if b58c == "tbere is less food stored due to low harvest"
replace b58c = "9" if b58c == "theft may results"
replace b58c = "1" if b58c == "there is a lot of money spent in paying hospital bills"
replace b58c = "1" if b58c == "there is difficulty in raising money due to less harvest"
replace b58c = "1" if b58c == "there is little income since crops will be sold mainly to take care of the patient"
replace b58c = "1" if b58c == "there is low income that can arise from the little harvest from the left crops in the garden"
replace b58c = "1" if b58c == "there will be low income due to low production"
replace b58c = "9" if b58c == "thieves will grow in number within the society"
replace b58c = "2" if b58c == "This will also affect our life because it can also cause outbreak of diseases like cholera."
replace b58c = "6" if b58c == "time for production will be wasted in taking care of the patient"
replace b58c = "6" if b58c == "time is also spent at the hospital instead of production"
replace b58c = "6" if b58c == "time is wasted in attending to patient"
replace b58c = "6" if b58c == "time is wasted in mourning hence reduction in production"
replace b58c = "6" if b58c == "time is wasted in taking care of funeral service"
replace b58c = "99" if b58c == "u"
replace b58c = "10" if b58c == "Water availability"
replace b58c = "10" if b58c == "water source"
replace b58c = "10" if b58c == "water source"
replace b58c = "10" if b58c == "water sources"
replace b58c = "2" if b58c == "welfare of the home"
replace b58c = "1" if b58c == "you also mourn a lot leading to reduced production"
replace b58c = "1" if b58c == "you make losses from production"
replace b58c = "1" if b58c == "you spend the little money in treating patient"
replace b58c = "99" if b58c == ""


destring b58c,replace
#delimit ;
label define b58c
1 "Stability of household income"
2 "Health of household members"
3 "Perfomance of livestock"
4 "Availability of food"
5 "Perfomance of crops"
6 "Quality of farm labour"
7 "Education of children"
8 "Protection from wild animals"
9 "Peace and development in the community"
10 "Destruction of water catchment areas"
99 "Not Applicable"
;
#delimit cr

la values b58c b58c
save "Module B",replace
********************************************************************************

** MODULE C**
use "Module C"
*Organizing identifying  variable
order hhid
sort hhid

save "Module C", replace

replace c1 = "1" if c1 == "AMAR MARKET"
replace c1 = "1"  if c1 == "AMAR MARKET"
replace c1 = "2" if c1 == "anaka"
replace c1 = "2" if c1 == "anaka"
replace c1 = "2" if c1 == "anaka"
replace c1 = "2" if c1 == "anaka"
replace c1 = "2" if c1 == "anaka market"
replace c1 = "2" if c1 == "anaka market"
replace c1 = "2" if c1 == "Anaka market"
replace c1 = "3" if c1 == "Aparanga main market"
replace c1 = "3" if c1 == "Aparanga main market"
replace c1 = "3" if c1 == "Aparanga market"
replace c1 = "3" if c1 == "Aparanga market"
replace c1 = "3" if c1 == "Aparangar"
replace c1 = "3" if c1 == "Aparangar"
replace c1 = "3" if c1 == "Aparangar"
replace c1 = "3" if c1 == "aparangar"
replace c1 = "4" if c1 == "aywee market"
replace c1 = "5" if c1 == "bat store"
replace c1 = "6" if c1 == "center kinene"
replace c1 = "7" if c1 == "center langol"
replace c1 = "1" if c1 == "Centre amar"
replace c1 = "1" if c1 == "Centre amar"
replace c1 = "1" if c1 == "centre amar"
replace c1 = "8" if c1 == "centre Gok"
replace c1 = "10" if c1 == "Centre kalang"
replace c1 = "12" if c1 == "centre kinene"
replace c1 = "12" if c1 == "centre kinene"
replace c1 = "12" if c1 == "centre langol"
replace c1 = "17" if c1 == "Centre Purongo"
replace c1 = "31" if c1 == "Centre Purongo"
replace c1 = "31" if c1 == "centre purongo"
replace c1 = "31" if c1 == "Centre purongo"
replace c1 = "31" if c1 == "centre purongo"
replace c1 = "31" if c1 == "Centre purongo"
replace c1 = "34" if c1 == "centre wilacic"
replace c1 = "24" if c1 == "Coner Nwoya main market."
replace c1 = "6" if c1 == "coorom"
replace c1 = "6" if c1 == "coorom"
replace c1 = "6" if c1 == "coorom"
replace c1 = "6" if c1 == "coorom"
replace c1 = "6" if c1 == "coorom"
replace c1 = "6" if c1 == "coorom"
replace c1 = "6" if c1 == "coorom centre"
replace c1 = "6" if c1 == "coorom centre"
replace c1 = "6" if c1 == "coorom centre market"
replace c1 = "6" if c1 == "coorom centre market"
replace c1 = "6" if c1 == "coorom main market"
replace c1 = "6" if c1 == "coorom main market"
replace c1 = "6" if c1 == "COOROM MARKET"
replace c1 = "6" if c1 == "coorom market"
replace c1 = "6" if c1 == "coorom market"
replace c1 = "24" if c1 == "corner Nwoya"
replace c1 = "24" if c1 == "corner Nwoya"
replace c1 = "24" if c1 == "Corner Nwoya"
replace c1 = "24" if c1 == "corner nwoya"
replace c1 = "24" if c1 == "Corner Nwoya main market."
replace c1 = "24" if c1 == "Corner Nwoya main market."
replace c1 = "29" if c1 == "Corner Patira"
replace c1 = "29" if c1 == "corner Patira"
replace c1 = "7" if c1 == "cuk BAT"
replace c1 = "34" if c1 == "cuk corner pamolla and Willacic"
replace c1 = "13" if c1 == "cuk goma"
replace c1 = "10" if c1 == "cuk kalang"
replace c1 = "10" if c1 == "cuk kalang"
replace c1 = "15" if c1 == "cuk lalem"
replace c1 = "25" if c1 == "cuk te okono"
replace c1 = "7" if c1 == "cuk tee mavule"
replace c1 = "7" if c1 == "cuk vilanova"
replace c1 = "24" if c1 == "food security"
replace c1 = "13" if c1 == "goma market"
replace c1 = "9" if c1 == "junction"
replace c1 = "9" if c1 == "junction"
replace c1 = "9" if c1 == "junction"
replace c1 = "9" if c1 == "junction"
replace c1 = "9" if c1 == "junction"
replace c1 = "9" if c1 == "Junction market"
replace c1 = "9" if c1 == "Junction market"
replace c1 = "9" if c1 == "Junction market"
replace c1 = "9" if c1 == "Junction market"
replace c1 = "9" if c1 == "Junction market"
replace c1 = "9" if c1 == "Junction market"
replace c1 = "9" if c1 == "Junction market."
replace c1 = "29" if c1 == "Junction patira"
replace c1 = "29" if c1 == "Junction patira"
replace c1 = "29" if c1 == "Junction Patira"
replace c1 = "29" if c1 == "Junction Patira"
replace c1 = "29" if c1 == "Junction Patira"
replace c1 = "29" if c1 == "Junction Patira"
replace c1 = "10" if c1 == "kalang"
replace c1 = "10" if c1 == "kalang center"
replace c1 = "10" if c1 == "kalang center"
replace c1 = "10" if c1 == "Kalang center"
replace c1 = "10" if c1 == "kalang center market"
replace c1 = "10" if c1 == "kalang centre"
replace c1 = "10" if c1 == "kalang centre"
replace c1 = "10" if c1 == "kalang centre market"
replace c1 = "10" if c1 == "kalang market"
replace c1 = "10" if c1 == "kalang market"
replace c1 = "10" if c1 == "kalang market"
replace c1 = "11" if c1 == "KANY KONYO"
replace c1 = "12" if c1 == "kenene centre"
replace c1 = "12" if c1 == "Kinene"
replace c1 = "12" if c1 == "Kinene"
replace c1 = "12" if c1 == "kinene"
replace c1 = "12" if c1 == "Kinene center market"
replace c1 = "12" if c1 == "Kinene center market"
replace c1 = "12" if c1 == "Kinene center market"
replace c1 = "12" if c1 == "Kinene main market."
replace c1 = "12" if c1 == "Kinene main market."
replace c1 = "12" if c1 == "kinene market"
replace c1 = "12" if c1 == "kinene market"
replace c1 = "12" if c1 == "kinene market"
replace c1 = "12" if c1 == "KINENE MARKET"
replace c1 = "12" if c1 == "kinene market"
replace c1 = "12" if c1 == "kinenene"
replace c1 = "13" if c1 == "koch goma"
replace c1 = "13" if c1 == "koch goma"
replace c1 = "13" if c1 == "KOCH GOMA MARKET"
replace c1 = "13" if c1 == "Koch goma trading centre"
replace c1 = "13" if c1 == "kochgama main market"
replace c1 = "13" if c1 == "kochgoma"
replace c1 = "13" if c1 == "kochgoma main market."
replace c1 = "24" if c1 == "kona nwoya market"
replace c1 = "24" if c1 == "kona nwoya market"
replace c1 = "24" if c1 == "kona nwoya market"
replace c1 = "14" if c1 == "Lalar"
replace c1 = "14" if c1 == "lalar center"
replace c1 = "14" if c1 == "Lalar main main market"
replace c1 = "14" if c1 == "lalar te mvule"
replace c1 = "14" if c1 == "lalar te mvule"
replace c1 = "16" if c1 == "Lamin lato"
replace c1 = "16" if c1 == "Lamin lato"
replace c1 = "16" if c1 == "lamin Latoo centre"
replace c1 = "16" if c1 == "lamin Latoo centre"
replace c1 = "16" if c1 == "Lamin Latoo market"
replace c1 = "16" if c1 == "Lamin Latoo market"
replace c1 = "16" if c1 == "Lamin too centre"
replace c1 = "16" if c1 == "laminato market"
replace c1 = "16" if c1 == "Laminatoo"
replace c1 = "16" if c1 == "Laminatoo"
replace c1 = "16" if c1 == "Laminatoo"
replace c1 = "16" if c1 == "laminatoo"
replace c1 = "16" if c1 == "Laminatoo market"
replace c1 = "16" if c1 == "laminatoo market"
replace c1 = "16" if c1 == "laminatoo market"
replace c1 = "17" if c1 == "Langol main market"
replace c1 = "18" if c1 == "langom market"
replace c1 = "19" if c1 == "lapem"
replace c1 = "20" if c1 == "Lapok"
replace c1 = "20" if c1 == "lapok market"
replace c1 = "20" if c1 == "lapok moo"
replace c1 = "20" if c1 == "lapok moo"
replace c1 = "20" if c1 == "lapok moo market"
replace c1 = "20" if c1 == "lapok moo market"
replace c1 = "20" if c1 == "lapok moo market"
replace c1 = "20" if c1 == "lapok moo market"
replace c1 = "20" if c1 == "lapok moo market"
replace c1 = "20" if c1 == "lapok moo market"
replace c1 = "20" if c1 == "lapok moo market"
replace c1 = "20" if c1 == "Lapok moo market"
replace c1 = "20" if c1 == "Lapok moo market"
replace c1 = "20" if c1 == "Lapok moo market"
replace c1 = "20" if c1 == "lapok mor"
replace c1 = "20" if c1 == "lapok mor"
replace c1 = "20" if c1 == "lapok mor"
replace c1 = "20" if c1 == "lapok mor"
replace c1 = "20" if c1 == "Lapok mor"
replace c1 = "20" if c1 == "lapokmoo"
replace c1 = "20" if c1 == "lapokmoo"
replace c1 = "20" if c1 == "lapokmoo"
replace c1 = "20" if c1 == "Lapokmoo"
replace c1 = "20" if c1 == "lapokmoo"
replace c1 = "20" if c1 == "lapokmoo"
replace c1 = "20" if c1 == "lapokmoo"
replace c1 = "20" if c1 == "Lapokmoo market"
replace c1 = "21" if c1 == "Lotuk market"
replace c1 = "22" if c1 == "Lulyango"
replace c1 = "22" if c1 == "lulyango"
replace c1 = "22" if c1 == "Lulyango"
replace c1 = "22" if c1 == "Lulyango"
replace c1 = "22" if c1 == "lulyango"
replace c1 = "22" if c1 == "lulyango"
replace c1 = "22" if c1 == "lulyango market"
replace c1 = "23" if c1 == "maka centre"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka Latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin"
replace c1 = "23" if c1 == "maka latin market"
replace c1 = "23" if c1 == "maka latin market"
replace c1 = "23" if c1 == "maka latin market"
replace c1 = "23" if c1 == "maka latin market"
replace c1 = "23" if c1 == "MAKA LATIN MARKET"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "makalatin"
replace c1 = "23" if c1 == "Maklatin market"
replace c1 = "24" if c1 == "Nwoya market"
replace c1 = "24" if c1 == "Nwoya village market"
replace c1 = "24" if c1 == "Nwoya village market"
replace c1 = "26" if c1 == "olwiyo"
replace c1 = "26" if c1 == "olwiyo"
replace c1 = "26" if c1 == "Olwiyo"
replace c1 = "26" if c1 == "Olwiyo"
replace c1 = "26" if c1 == "Olwiyo"
replace c1 = "26" if c1 == "olwiyo center"
replace c1 = "26" if c1 == "Olwiyo center"
replace c1 = "26" if c1 == "Olwiyo main market"
replace c1 = "26" if c1 == "Olwiyo main market"
replace c1 = "26" if c1 == "olwiyo market"
replace c1 = "26" if c1 == "olwiyo market"
replace c1 = "26" if c1 == "Olwiyo market"
replace c1 = "26" if c1 == "Olwyiyo"
replace c1 = "26" if c1 == "Olwyiyo"
replace c1 = "26" if c1 == "Olwyiyo"
replace c1 = "27" if c1 == "oruka"
replace c1 = "27" if c1 == "oruka market"
replace c1 = "28" if c1 == "oyinya"
replace c1 = "29" if c1 == "patira junction"
replace c1 = "29" if c1 == "patira junction"
replace c1 = "29" if c1 == "patira junction market"
replace c1 = "29" if c1 == "pet kolo"
replace c1 = "30" if c1 == "petkolo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "Purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo"
replace c1 = "31" if c1 == "purongo center"
replace c1 = "31" if c1 == "purongo center"
replace c1 = "31" if c1 == "purongo center"
replace c1 = "31" if c1 == "purongo center market"
replace c1 = "31" if c1 == "Purongo main market"
replace c1 = "31" if c1 == "Purongo main market"
replace c1 = "31" if c1 == "Purongo main market"
replace c1 = "31" if c1 == "purongo main market"
replace c1 = "31" if c1 == "Purongo main market."
replace c1 = "31" if c1 == "Purongo main market."
replace c1 = "31" if c1 == "purongo market"
replace c1 = "31" if c1 == "purongo market"
replace c1 = "31" if c1 == "Purongo market"
replace c1 = "31" if c1 == "purongo market"
replace c1 = "31" if c1 == "purongo market"
replace c1 = "31" if c1 == "purongo market"
replace c1 = "31" if c1 == "purongo market"
replace c1 = "32" if c1 == "Te mabule"
replace c1 = "33" if c1 == "Te Olam"
replace c1 = "33" if c1 == "Te Olam"
replace c1 = "33" if c1 == "Te Olam"
replace c1 = "33" if c1 == "Te olam"
replace c1 = "33" if c1 == "Te olam"
replace c1 = "33" if c1 == "Te Olam"
replace c1 = "33" if c1 == "Te Olam"
replace c1 = "33" if c1 == "te olam market"
replace c1 = "33" if c1 == "Te Olam market"
replace c1 = "33" if c1 == "Te olam market"
replace c1 = "32" if c1 == "tee mam"
replace c1 = "32" if c1 == "Temavule"
replace c1 = "32" if c1 == "Temavule"
replace c1 = "32" if c1 == "Temavule"
replace c1 = "32" if c1 == "Ter mavule market"
replace c1 = "32" if c1 == "Ter mavule/ Lalar Market"
replace c1 = "33" if c1 == "Ter Olam"
replace c1 = "24" if c1 == "u"
replace c1 = "35" if c1 == "wi anaka"
replace c1 = "35" if c1 == "wi anaka"
replace c1 = "35" if c1 == "wi anaka"
replace c1 = "35" if c1 == "wi anaka"
replace c1 = "35" if c1 == "Wianaka"
replace c1 = "35" if c1 == "Wianaka main market"
replace c1 = "35" if c1 == "Wianaka main market."
replace c1 = "35" if c1 == "Wii Anaka"
replace c1 = "35" if c1 == "Wii Anaka"
replace c1 = "35" if c1 == "wii anaka"
replace c1 = "35" if c1 == "wii anaka"
replace c1 = "35" if c1 == "wii anaka"
replace c1 = "35" if c1 == "Wii Anaka"
replace c1 = "35" if c1 == "wii anaka"
replace c1 = "35" if c1 == "Wii Anaka"
replace c1 = "35" if c1 == "Wii Anaka market"
replace c1 = "35" if c1 == "wii anaka market"
replace c1 = "35" if c1 == "Wii anaka market"
replace c1 = "35" if c1 == "wii anaka market"
replace c1 = "35" if c1 == "Wii Anaka market"
replace c1 = "34" if c1 == "wii Anaka."
replace c1 = "34" if c1 == "wii lacic"
replace c1 = "34" if c1 == "wii lacic"
replace c1 = "34" if c1 == "wii lacic"
replace c1 = "34" if c1 == "WIILACIC MARKET"
replace c1 = "34" if c1 == "wilacic"
replace c1 = "34" if c1 == "wilacic"
replace c1 = "34" if c1 == "wilacic"
replace c1 = "34" if c1 == "wilacic market"
replace c1 = "34" if c1 == "Wilacic market"
replace c1 = "36" if c1 == "WILACIC MARKET"
replace c1 = "36" if c1 == "woo cwari market"
replace c1 = "36" if c1 == "Woo cwari market"
replace c1 = "36" if c1 == "Wor cwari"
replace c1 = "37" if c1 == "yab wangi"
replace c1 = "38" if c1 == "Ywaya junction"
replace c1 = "38" if c1 == "Ywaya junction market"
replace c1 = "38" if c1 == "Ywaya Junction market"
replace c1 = "38" if c1 == "Ywaya junction market"



destring c1,replace
#delimit ;
label define c1
1 "Amar Market "
2 "Anaka Market "
3 "Aparanga Market "
4 "Aywee Market "
5 "Bat store Market "
6 "Coorom Market "
7 "Mavule Market "
8 "Gok Market "
9 "Junction Market "
10 "Kalang Market "
11 "Kany Okono Market "
12 "Kinene  Market "
13 "Kochgoma Market "
14 "Lalar Market "
15 "Lalem Market "
16 "Laminlatoo Market "
17 "Langol Market "
18 "Langum Market "
19 "Lapem Market "
20 "Lapok Market "
21 "Lotuk Market "
22 "Lullyango Market "
23 "Maka Latin Market "
24 "Nwoya main Market "
25 "Okino Market "
26 "Olwiyo Market "
27 "Oruka Market "
28 "Oyinya Market "
29 "Patira Market "
30 "Petkolo Market "
31 "Purongo Market "
32 "Te Mabule Market "
33 "Te Olam Market "
34 "Wilacic Market "
35 "Winaka Market "
36 "Woo cwari Market "
37 "Yab wangi Market "
38 "Ywaya Market "
;
#delimit cr

la values c1 c1
save "Module C",replace

replace c5a = "9" if c5a == "the market starts late in the evening"
replace c5a = "9" if c5a == "The market opens late"
replace c5a = "3" if c5a == "low prices for them the sellers"
replace c5a = "9" if c5a == "market available in the evening only"
replace c5a = "9" if c5a == "Market always open late."
replace c5a = "9" if c5a == "the market is far and opens late"
replace c5a = "9" if c5a == "the market starts late and you normally get back late from shopping"
replace c5a = "9" if c5a == "the market starts very late in the evening"
replace c5a = "9" if c5a == "the market opens late"
replace c5a = "9" if c5a == "the market opens late"
replace c5a = "9" if c5a == "Opens late"
replace c5a = "9" if c5a == "it starts late"
replace c5a = "9" if c5a == "unreliable, Opens late"
replace c5a = "9" if c5a == "Less working hours"
replace c5a = "10" if c5a == "the market is not well established"
replace c5a = "6" if c5a == "Bad road when it rains."
replace c5a = "9" if c5a == "The market opens late"
replace c5a = "10" if c5a == "Unreliability of the market"
replace c5a = "6" if c5a == "poor market infrustructure"
replace c5a = "9" if c5a == "the market starts late"
replace c5a = "5" if c5a == "hardship in walking the long distance"

destring c5a,replace
#delimit ;
label define c5a
0 "None"
1 "Lack of food product diversity"
2 "Not enough supply (not enough food available on the market)"
3 "High food prices"
4 "Unpredictable price changes"
5 "Market is too far"
6 "Bad road to market"
7 "Poor quality products"
8 "Poor Hygiene"
9 "Only opens in the evening"
10 "Poor amenities in the market"
;
#delimit cr

la values c5 c5a
save "Module C",replace

gen c71=strpos(c7, "a")
gen c72=strpos(c7, "b")
gen c73=strpos(c7, "c")
gen c74=strpos(c7, "d")
gen c75=strpos(c7, "e")
gen c76=strpos(c7, "f")
gen c77=strpos(c7, "g")
gen c78=strpos(c7, "h")

la var c71 "Better prices elsewhere"
la var c72 "More sellers"
la var c73 "More assured supply"
la var c74 "More diversity"
la var c75 "More frequent market days"
la var c76 "Better quality products"
la var c77 "Better hygiene"
la var c78 "Other Specify"

replace c72 =1 if c72 >1
replace c73 =1 if c73 >1
replace c74 =1 if c74 >1
replace c75 =1 if c75 >1
replace c76 =1 if c76 >1
replace c77 =1 if c77 >1
replace c78 =1 if c78 >1

la define yesno 1 Yes 0 No
la values c71 c72 c73 c74 c75 c76 c77 c78 yesno


replace c7a = "1" if c7a == "Reliable interms of timeliness"
replace c7a = "1" if c7a == "Market is open every time ."
replace c7a = "1" if c7a == "Very reliable market"
replace c7a = "1" if c7a == "more reliable"
replace c7a = "1" if c7a == "more reliable"
replace c7a = "2" if c7a == "Price is negotiable"
replace c7a = "3" if c7a == "well constructed."
replace c7a = "1" if c7a == "anytime you go, you will find it open and you getwhatyou want"


destring c7a,replace
#delimit ;
label define c7a
1 "The market is reliable anytime"
2 "Prices are negotiable in the market"
3 "The market is well constructed"
;
#delimit cr

la values c7a c7a
save "Module C",replace
********************************************************************************
** MODULE D**

use "Module D"
*Organizing identifying  variable
order hhid
sort hhid

save "Module D",replace

********************************************************************************
** MODULE E**

use "Module E"
*Organizing identifying  variable
order hhid
sort hhid

save "Module E",replace

********************************************************************************

** MODULE F**

use "Module F"
*Organizing identifying  variable
order hhid
sort hhid

save "Module F",replace

********************************************************************************
** MODULE E1**

use "Module E1"
*Organizing identifying  variable
order hhid
sort hhid

save "Module E1",replace
********************************************************************************

********************************************************************************
*Cleaning Module G
********************************************************************************
clear all
set more off
use "Module G"
order hhid
sort hhid
********************************************************************************

gen nocereal_nov17=strpos(g01a, "a")
gen nocereal_oct17=strpos(g01a, "b")
gen nocereal_sep17=strpos(g01a, "c")
gen nocereal_aug17=strpos(g01a, "d")
gen nocereal_jul17=strpos(g01a, "e")
gen nocereal_jun17=strpos(g01a, "f")
gen nocereal_may17=strpos(g01a, "g")
gen nocereal_apr17=strpos(g01a, "h")
gen nocereal_mar17=strpos(g01a, "i")
gen nocereal_feb17=strpos(g01a, "j")
gen nocereal_jan17=strpos(g01a, "k")
gen nocereal_dec16=strpos(g01a, "l")

replace nocereal_nov17 = 1 if nocereal_nov17 >1
replace nocereal_oct17 = 1 if nocereal_oct17 >1
replace nocereal_sep17 = 1 if nocereal_sep17 >1
replace nocereal_aug17 = 1 if nocereal_aug17 >1
replace nocereal_jul17 = 1 if nocereal_jul17 >1
replace nocereal_jun17 = 1 if nocereal_jun17 >1
replace nocereal_may17 = 1 if nocereal_may17 >1
replace nocereal_apr17 = 1 if nocereal_apr17 >1
replace nocereal_mar17 = 1 if nocereal_mar17 >1
replace nocereal_feb17 = 1 if nocereal_feb17 >1
replace nocereal_jan17 = 1 if nocereal_jan17 >1
replace nocereal_dec16 = 1 if nocereal_dec16 >1

la define yesno 1 Yes 0 No
la values nocereal_nov17 nocereal_oct17 nocereal_sep17 nocereal_aug17 ///
nocereal_jul17 nocereal_jun17 nocereal_may17 nocereal_apr17 nocereal_mar17 ///
nocereal_feb17 nocereal_jan17 nocereal_dec16 yesno

la  var  nocereal_nov17 "No Cereal 2017nov"
la  var  nocereal_oct17 "No Cereal 2017oct"
la  var  nocereal_sep17 "No Cereal 2017sep"
la  var  nocereal_aug17 "No Cereal 2017aug"
la  var  nocereal_jul17 "No Cereal 2017jul"
la  var  nocereal_jun17 "No Cereal 2017june"
la  var  nocereal_may17 "No Cereal 2017may"
la  var  nocereal_apr17 "No Cereal 2017apr"
la  var  nocereal_mar17 "No Cereal 2017march"
la  var  nocereal_feb17 "No Cereal 2017feb"
la  var  nocereal_jan17 "No Cereal 2017jan"
la  var  nocereal_dec16 "No Cereal 2016dec"
********************************************************************************

gen lowcereal_nov17 = strpos(g01b, "a")
gen lowcereal_oct17 = strpos(g01b, "b")
gen lowcereal_sep17 = strpos(g01b, "c")
gen lowcereal_aug17 = strpos(g01b, "d")
gen lowcereal_jul17 = strpos(g01b, "e")
gen lowcereal_jun17 = strpos(g01b, "f")
gen lowcereal_may17 = strpos(g01b, "g")
gen lowcereal_apr17 = strpos(g01b, "h")
gen lowcereal_mar17 = strpos(g01b, "i")
gen lowcereal_feb17 = strpos(g01b, "j")
gen lowcereal_jan17 = strpos(g01b, "k")
gen lowcereal_dec16 = strpos(g01b, "l")

replace lowcereal_nov17 = 1 if lowcereal_nov17 >1
replace lowcereal_oct17 = 1 if lowcereal_oct17 >1
replace lowcereal_sep17 = 1 if lowcereal_sep17 >1
replace lowcereal_aug17 = 1 if lowcereal_aug17 >1
replace lowcereal_jul17 = 1 if lowcereal_jul17 >1
replace lowcereal_jun17 = 1 if lowcereal_jun17 >1
replace lowcereal_may17 = 1 if lowcereal_may17 >1
replace lowcereal_apr17 = 1 if lowcereal_apr17 >1
replace lowcereal_mar17 = 1 if lowcereal_mar17 >1
replace lowcereal_feb17 = 1 if lowcereal_feb17 >1
replace lowcereal_jan17 = 1 if lowcereal_jan17 >1
replace lowcereal_dec16 = 1 if lowcereal_dec16 >1

la  var  lowcereal_nov17 "Low Cereal 2017Nov"
la  var  lowcereal_oct17 "Low Cereal 2017Oct"
la  var  lowcereal_sep17 "Low Cereal 2017Sept"
la  var  lowcereal_aug17 "Low Cereal 2017Aug"
la  var  lowcereal_jul17 "Low Cereal 2017Jul"
la  var  lowcereal_jun17 "Low Cereal 2017June"
la  var  lowcereal_may17 "Low Cereal 2017May"
la  var  lowcereal_apr17 "Low Cereal 2017Apr"
la  var  lowcereal_mar17 "Low Cereal 2017March"
la  var  lowcereal_feb17 "Low Cereal 2017Feb"
la  var  lowcereal_jan17 "Low Cereal 2017Jan"
la  var  lowcereal_dec16 "Low Cereal 2016Dec"

la values lowcereal_nov17 ///
lowcereal_oct17 ///
lowcereal_sep17 ///
lowcereal_aug17 ///
lowcereal_jul17 ///
lowcereal_jun17 ///
lowcereal_may17 ///
lowcereal_apr17 ///
lowcereal_mar17 ///
lowcereal_feb17 ///
lowcereal_jan17 ///
lowcereal_dec16 yesno
********************************************************************************
gen avecereal_nov17 = strpos(g01c, "a")
gen avecereal_oct17 = strpos(g01c, "b")
gen avecereal_sep17 = strpos(g01c, "c")
gen avecereal_aug17 = strpos(g01c, "d")
gen avecereal_jul17 = strpos(g01c, "e")
gen avecereal_jun17 = strpos(g01c, "f")
gen avecereal_may17 = strpos(g01c, "g")
gen avecereal_apr17 = strpos(g01c, "h")
gen avecereal_mar17 = strpos(g01c, "i")
gen avecereal_feb17 = strpos(g01c, "j")
gen avecereal_jan17 = strpos(g01c, "k")
gen avecereal_dec16 = strpos(g01c, "l")

replace avecereal_nov17 = 1 if avecereal_nov17 >1
replace avecereal_oct17 = 1 if avecereal_oct17 >1
replace avecereal_sep17 = 1 if avecereal_sep17 >1
replace avecereal_aug17 = 1 if avecereal_aug17 >1
replace avecereal_jul17 = 1 if avecereal_jul17 >1
replace avecereal_jun17 = 1 if avecereal_jun17 >1
replace avecereal_may17 = 1 if avecereal_may17 >1
replace avecereal_apr17 = 1 if avecereal_apr17 >1
replace avecereal_mar17 = 1 if avecereal_mar17 >1
replace avecereal_feb17 = 1 if avecereal_feb17 >1
replace avecereal_jan17 = 1 if avecereal_jan17 >1
replace avecereal_dec16 = 1 if avecereal_dec16 >1

la  var  avecereal_nov17 "Av Cereal 2017Nov"
la  var  avecereal_oct17 "Av Cereal 2017Oct"
la  var  avecereal_sep17 "Av Cereal 2017Sept"
la  var  avecereal_aug17 "Av Cereal 2017Aug"
la  var  avecereal_jul17 "Av Cereal 2017Jul"
la  var  avecereal_jun17 "Av Cereal 2017June"
la  var  avecereal_may17 "Av Cereal 2017May"
la  var  avecereal_apr17 "Av Cereal 2017Apr"
la  var  avecereal_mar17 "Av Cereal 2017March"
la  var  avecereal_feb17 "Av Cereal 2017Feb"
la  var  avecereal_jan17 "Av Cereal 2017Jan"
la  var  avecereal_dec16 "Av Cereal 2016Dec"

la values ///
avecereal_nov17 ///
avecereal_oct17 ///
avecereal_sep17 ///
avecereal_aug17 ///
avecereal_jul17 ///
avecereal_jun17 ///
avecereal_may17 ///
avecereal_apr17 ///
avecereal_mar17 ///
avecereal_feb17 ///
avecereal_jan17 ///
avecereal_dec16 ///
yesno
********************************************************************************

gen highcereal_nov17 = strpos(g01d, "a")
gen highcereal_oct17 = strpos(g01d, "b")
gen highcereal_sep17 = strpos(g01d, "c")
gen highcereal_aug17 = strpos(g01d, "d")
gen highcereal_jul17 = strpos(g01d, "e")
gen highcereal_jun17 = strpos(g01d, "f")
gen highcereal_may17 = strpos(g01d, "g")
gen highcereal_apr17 = strpos(g01d, "h")
gen highcereal_mar17 = strpos(g01d, "i")
gen highcereal_feb17 = strpos(g01d, "j")
gen highcereal_jan17 = strpos(g01d, "k")
gen highcereal_dec16 = strpos(g01d, "l")


replace highcereal_nov17 = 1 if highcereal_nov17 >1
replace highcereal_oct17 = 1 if highcereal_oct17 >1
replace highcereal_sep17 = 1 if highcereal_sep17 >1
replace highcereal_aug17 = 1 if highcereal_aug17 >1
replace highcereal_jul17 = 1 if highcereal_jul17 >1
replace highcereal_jun17 = 1 if highcereal_jun17 >1
replace highcereal_may17 = 1 if highcereal_may17 >1
replace highcereal_apr17 = 1 if highcereal_apr17 >1
replace highcereal_mar17 = 1 if highcereal_mar17 >1
replace highcereal_feb17 = 1 if highcereal_feb17 >1
replace highcereal_jan17 = 1 if highcereal_jan17 >1
replace highcereal_dec16 = 1 if highcereal_dec16 >1

la  var  highcereal_nov17 "High Cereal 2017Nov"
la  var  highcereal_oct17 "High Cereal 2017Oct"
la  var  highcereal_sep17 "High Cereal 2017Sept"
la  var  highcereal_aug17 "High Cereal 2017Aug"
la  var  highcereal_jul17 "High Cereal 2017Jul"
la  var  highcereal_jun17 "High Cereal 2017June"
la  var  highcereal_may17 "High Cereal 2017May"
la  var  highcereal_apr17 "High Cereal 2017Apr"
la  var  highcereal_mar17 "High Cereal 2017March"
la  var  highcereal_feb17 "High Cereal 2017Feb"
la  var  highcereal_jan17 "High Cereal 2017Jan"
la  var  highcereal_dec16 "High Cereal 2016Dec"

la values ///
highcereal_nov17 ///
highcereal_oct17 ///
highcereal_sep17 ///
highcereal_aug17 ///
highcereal_jul17 ///
highcereal_jun17 ///
highcereal_may17 ///
highcereal_apr17 ///
highcereal_mar17 ///
highcereal_feb17 ///
highcereal_jan17 ///
highcereal_dec16 ///
yesno

********************************************************************************
gen notuber_nov17 = strpos(g02a, "a")
gen notuber_oct17 = strpos(g02a, "b")
gen notuber_sep17 = strpos(g02a, "c")
gen notuber_aug17 = strpos(g02a, "d")
gen notuber_jul17 = strpos(g02a, "e")
gen notuber_jun17 = strpos(g02a, "f")
gen notuber_may17 = strpos(g02a, "g")
gen notuber_apr17 = strpos(g02a, "h")
gen notuber_mar17 = strpos(g02a, "i")
gen notuber_feb17 = strpos(g02a, "j")
gen notuber_jan17 = strpos(g02a, "k")
gen notuber_dec16 = strpos(g02a, "l")

replace notuber_nov17 = 1 if notuber_nov17 >1
replace notuber_oct17 = 1 if notuber_oct17 >1
replace notuber_sep17 = 1 if notuber_sep17 >1
replace notuber_aug17 = 1 if notuber_aug17 >1
replace notuber_jul17 = 1 if notuber_jul17 >1
replace notuber_jun17 = 1 if notuber_jun17 >1
replace notuber_may17 = 1 if notuber_may17 >1
replace notuber_apr17 = 1 if notuber_apr17 >1
replace notuber_mar17 = 1 if notuber_mar17 >1
replace notuber_feb17 = 1 if notuber_feb17 >1
replace notuber_jan17 = 1 if notuber_jan17 >1
replace notuber_dec16 = 1 if notuber_dec16 >1

la  var  notuber_nov17 "No Tuber 2017Nov"
la  var  notuber_oct17 "No Tuber 2017Oct"
la  var  notuber_sep17 "No Tuber 2017Sept"
la  var  notuber_aug17 "No Tuber 2017Aug"
la  var  notuber_jul17 "No Tuber 2017Jul"
la  var  notuber_jun17 "No Tuber 2017June"
la  var  notuber_may17 "No Tuber 2017May"
la  var  notuber_apr17 "No Tuber 2017Apr"
la  var  notuber_mar17 "No Tuber 2017March"
la  var  notuber_feb17 "No Tuber 2017Feb"
la  var  notuber_jan17 "No Tuber 2017Jan"
la  var  notuber_dec16 "No Tuber 2016Dec"

la values ///
notuber_nov17 ///
notuber_oct17 ///
notuber_sep17 ///
notuber_aug17 ///
notuber_jul17 ///
notuber_jun17 ///
notuber_may17 ///
notuber_apr17 ///
notuber_mar17 ///
notuber_feb17 ///
notuber_jan17 ///
notuber_dec16 ///
yesno

********************************************************************************
gen lowtuber_nov17 = strpos(g02b, "a")
gen lowtuber_oct17 = strpos(g02b, "b")
gen lowtuber_sep17 = strpos(g02b, "c")
gen lowtuber_aug17 = strpos(g02b, "d")
gen lowtuber_jul17 = strpos(g02b, "e")
gen lowtuber_jun17 = strpos(g02b, "f")
gen lowtuber_may17 = strpos(g02b, "g")
gen lowtuber_apr17 = strpos(g02b, "h")
gen lowtuber_mar17 = strpos(g02b, "i")
gen lowtuber_feb17 = strpos(g02b, "j")
gen lowtuber_jan17 = strpos(g02b, "k")
gen lowtuber_dec16 = strpos(g02b, "l")

replace lowtuber_nov17 = 1 if lowtuber_nov17 >1
replace lowtuber_oct17 = 1 if lowtuber_oct17 >1
replace lowtuber_sep17 = 1 if lowtuber_sep17 >1
replace lowtuber_aug17 = 1 if lowtuber_aug17 >1
replace lowtuber_jul17 = 1 if lowtuber_jul17 >1
replace lowtuber_jun17 = 1 if lowtuber_jun17 >1
replace lowtuber_may17 = 1 if lowtuber_may17 >1
replace lowtuber_apr17 = 1 if lowtuber_apr17 >1
replace lowtuber_mar17 = 1 if lowtuber_mar17 >1
replace lowtuber_feb17 = 1 if lowtuber_feb17 >1
replace lowtuber_jan17 = 1 if lowtuber_jan17 >1
replace lowtuber_dec16 = 1 if lowtuber_dec16 >1

la  var  lowtuber_nov17 "Low Tuber 2017Nov"
la  var  lowtuber_oct17 "Low Tuber 2017Oct"
la  var  lowtuber_sep17 "Low Tuber 2017Sept"
la  var  lowtuber_aug17 "Low Tuber 2017Aug"
la  var  lowtuber_jul17 "Low Tuber 2017Jul"
la  var  lowtuber_jun17 "Low Tuber 2017June"
la  var  lowtuber_may17 "Low Tuber 2017May"
la  var  lowtuber_apr17 "Low Tuber 2017Apr"
la  var  lowtuber_mar17 "Low Tuber 2017March"
la  var  lowtuber_feb17 "Low Tuber 2017Feb"
la  var  lowtuber_jan17 "Low Tuber 2017Jan"
la  var  lowtuber_dec16 "Low Tuber 2016Dec"

la values ///
lowtuber_nov17 ///
lowtuber_oct17 ///
lowtuber_sep17 ///
lowtuber_aug17 ///
lowtuber_jul17 ///
lowtuber_jun17 ///
lowtuber_may17 ///
lowtuber_apr17 ///
lowtuber_mar17 ///
lowtuber_feb17 ///
lowtuber_jan17 ///
lowtuber_dec16 ///
yesno
********************************************************************************
gen avetuber_nov17 = strpos(g02c, "a")
gen avetuber_oct17 = strpos(g02c, "b")
gen avetuber_sep17 = strpos(g02c, "c")
gen avetuber_aug17 = strpos(g02c, "d")
gen avetuber_jul17 = strpos(g02c, "e")
gen avetuber_jun17 = strpos(g02c, "f")
gen avetuber_may17 = strpos(g02c, "g")
gen avetuber_apr17 = strpos(g02c, "h")
gen avetuber_mar17 = strpos(g02c, "i")
gen avetuber_feb17 = strpos(g02c, "j")
gen avetuber_jan17 = strpos(g02c, "k")
gen avetuber_dec16 = strpos(g02c, "l")

replace avetuber_nov17 = 1 if avetuber_nov17 >1
replace avetuber_oct17 = 1 if avetuber_oct17 >1
replace avetuber_sep17 = 1 if avetuber_sep17 >1
replace avetuber_aug17 = 1 if avetuber_aug17 >1
replace avetuber_jul17 = 1 if avetuber_jul17 >1
replace avetuber_jun17 = 1 if avetuber_jun17 >1
replace avetuber_may17 = 1 if avetuber_may17 >1
replace avetuber_apr17 = 1 if avetuber_apr17 >1
replace avetuber_mar17 = 1 if avetuber_mar17 >1
replace avetuber_feb17 = 1 if avetuber_feb17 >1
replace avetuber_jan17 = 1 if avetuber_jan17 >1
replace avetuber_dec16 = 1 if avetuber_dec16 >1

la  var  avetuber_nov17 "Av Tuber 2017Nov"
la  var  avetuber_oct17 "Av Tuber 2017Oct"
la  var  avetuber_sep17 "Av Tuber 2017Sept"
la  var  avetuber_aug17 "Av Tuber 2017Aug"
la  var  avetuber_jul17 "Av Tuber 2017Jul"
la  var  avetuber_jun17 "Av Tuber 2017June"
la  var  avetuber_may17 "Av Tuber 2017May"
la  var  avetuber_apr17 "Av Tuber 2017Apr"
la  var  avetuber_mar17 "Av Tuber 2017March"
la  var  avetuber_feb17 "Av Tuber 2017Feb"
la  var  avetuber_jan17 "Av Tuber 2017Jan"
la  var  avetuber_dec16 "Av Tuber 2016Dec"

la values ///
avetuber_nov17 ///
avetuber_oct17 ///
avetuber_sep17 ///
avetuber_aug17 ///
avetuber_jul17 ///
avetuber_jun17 ///
avetuber_may17 ///
avetuber_apr17 ///
avetuber_mar17 ///
avetuber_feb17 ///
avetuber_jan17 ///
avetuber_dec16 ///
yesno
********************************************************************************
gen hightuber_nov17 = strpos(g02d, "a")
gen hightuber_oct17 = strpos(g02d, "b")
gen hightuber_sep17 = strpos(g02d, "c")
gen hightuber_aug17 = strpos(g02d, "d")
gen hightuber_jul17 = strpos(g02d, "e")
gen hightuber_jun17 = strpos(g02d, "f")
gen hightuber_may17 = strpos(g02d, "g")
gen hightuber_apr17 = strpos(g02d, "h")
gen hightuber_mar17 = strpos(g02d, "i")
gen hightuber_feb17 = strpos(g02d, "j")
gen hightuber_jan17 = strpos(g02d, "k")
gen hightuber_dec16 = strpos(g02d, "l")

replace hightuber_nov17 = 1 if hightuber_nov17 >1
replace hightuber_oct17 = 1 if hightuber_oct17 >1
replace hightuber_sep17 = 1 if hightuber_sep17 >1
replace hightuber_aug17 = 1 if hightuber_aug17 >1
replace hightuber_jul17 = 1 if hightuber_jul17 >1
replace hightuber_jun17 = 1 if hightuber_jun17 >1
replace hightuber_may17 = 1 if hightuber_may17 >1
replace hightuber_apr17 = 1 if hightuber_apr17 >1
replace hightuber_mar17 = 1 if hightuber_mar17 >1
replace hightuber_feb17 = 1 if hightuber_feb17 >1
replace hightuber_jan17 = 1 if hightuber_jan17 >1
replace hightuber_dec16 = 1 if hightuber_dec16 >1

la  var  hightuber_nov17 "High Tuber 2017Nov"
la  var  hightuber_oct17 "High Tuber 2017Oct"
la  var  hightuber_sep17 "High Tuber 2017Sept"
la  var  hightuber_aug17 "High Tuber 2017Aug"
la  var  hightuber_jul17 "High Tuber 2017Jul"
la  var  hightuber_jun17 "High Tuber 2017June"
la  var  hightuber_may17 "High Tuber 2017May"
la  var  hightuber_apr17 "High Tuber 2017Apr"
la  var  hightuber_mar17 "High Tuber 2017March"
la  var  hightuber_feb17 "High Tuber 2017Feb"
la  var  hightuber_jan17 "High Tuber 2017Jan"
la  var  hightuber_dec16 "High Tuber 2016Dec"

la values ///
hightuber_nov17 ///
hightuber_oct17 ///
hightuber_sep17 ///
hightuber_aug17 ///
hightuber_jul17 ///
hightuber_jun17 ///
hightuber_may17 ///
hightuber_apr17 ///
hightuber_mar17 ///
hightuber_feb17 ///
hightuber_jan17 ///
hightuber_dec16 ///
yesno
********************************************************************************
gen nolegumes_nov17 = strpos(g03a, "a")
gen nolegumes_oct17 = strpos(g03a, "b")
gen nolegumes_sep17 = strpos(g03a, "c")
gen nolegumes_aug17 = strpos(g03a, "d")
gen nolegumes_jul17 = strpos(g03a, "e")
gen nolegumes_jun17 = strpos(g03a, "f")
gen nolegumes_may17 = strpos(g03a, "g")
gen nolegumes_apr17 = strpos(g03a, "h")
gen nolegumes_mar17 = strpos(g03a, "i")
gen nolegumes_feb17 = strpos(g03a, "j")
gen nolegumes_jan17 = strpos(g03a, "k")
gen nolegumes_dec16 = strpos(g03a, "l")

replace nolegumes_nov17 = 1 if nolegumes_nov17 >1
replace nolegumes_oct17 = 1 if nolegumes_oct17 >1
replace nolegumes_sep17 = 1 if nolegumes_sep17 >1
replace nolegumes_aug17 = 1 if nolegumes_aug17 >1
replace nolegumes_jul17 = 1 if nolegumes_jul17 >1
replace nolegumes_jun17 = 1 if nolegumes_jun17 >1
replace nolegumes_may17 = 1 if nolegumes_may17 >1
replace nolegumes_apr17 = 1 if nolegumes_apr17 >1
replace nolegumes_mar17 = 1 if nolegumes_mar17 >1
replace nolegumes_feb17 = 1 if nolegumes_feb17 >1
replace nolegumes_jan17 = 1 if nolegumes_jan17 >1
replace nolegumes_dec16 = 1 if nolegumes_dec16 >1

la  var  nolegumes_nov17 "No Legumes 2017Nov"
la  var  nolegumes_oct17 "No Legumes 2017Oct"
la  var  nolegumes_sep17 "No Legumes 2017Sept"
la  var  nolegumes_aug17 "No Legumes 2017Aug"
la  var  nolegumes_jul17 "No Legumes 2017Jul"
la  var  nolegumes_jun17 "No Legumes 2017June"
la  var  nolegumes_may17 "No Legumes 2017May"
la  var  nolegumes_apr17 "No Legumes 2017Apr"
la  var  nolegumes_mar17 "No Legumes 2017March"
la  var  nolegumes_feb17 "No Legumes 2017Feb"
la  var  nolegumes_jan17 "No Legumes 2017Jan"
la  var  nolegumes_dec16 "No Legumes 2016Dec"

la values ///
nolegumes_nov17 ///
nolegumes_oct17 ///
nolegumes_sep17 ///
nolegumes_aug17 ///
nolegumes_jul17 ///
nolegumes_jun17 ///
nolegumes_may17 ///
nolegumes_apr17 ///
nolegumes_mar17 ///
nolegumes_feb17 ///
nolegumes_jan17 ///
nolegumes_dec16 ///
yesno
********************************************************************************
gen lowlegumes_nov17 = strpos(g03b, "a")
gen lowlegumes_oct17 = strpos(g03b, "b")
gen lowlegumes_sep17 = strpos(g03b, "c")
gen lowlegumes_aug17 = strpos(g03b, "d")
gen lowlegumes_jul17 = strpos(g03b, "e")
gen lowlegumes_jun17 = strpos(g03b, "f")
gen lowlegumes_may17 = strpos(g03b, "g")
gen lowlegumes_apr17 = strpos(g03b, "h")
gen lowlegumes_mar17 = strpos(g03b, "i")
gen lowlegumes_feb17 = strpos(g03b, "j")
gen lowlegumes_jan17 = strpos(g03b, "k")
gen lowlegumes_dec16 = strpos(g03b, "l")


replace lowlegumes_nov17 = 1 if lowlegumes_nov17 >1
replace lowlegumes_oct17 = 1 if lowlegumes_oct17 >1
replace lowlegumes_sep17 = 1 if lowlegumes_sep17 >1
replace lowlegumes_aug17 = 1 if lowlegumes_aug17 >1
replace lowlegumes_jul17 = 1 if lowlegumes_jul17 >1
replace lowlegumes_jun17 = 1 if lowlegumes_jun17 >1
replace lowlegumes_may17 = 1 if lowlegumes_may17 >1
replace lowlegumes_apr17 = 1 if lowlegumes_apr17 >1
replace lowlegumes_mar17 = 1 if lowlegumes_mar17 >1
replace lowlegumes_feb17 = 1 if lowlegumes_feb17 >1
replace lowlegumes_jan17 = 1 if lowlegumes_jan17 >1
replace lowlegumes_dec16 = 1 if lowlegumes_dec16 >1


la  var  lowlegumes_nov17 "Low Legumes 2017Nov"
la  var  lowlegumes_oct17 "Low Legumes 2017Oct"
la  var  lowlegumes_sep17 "Low Legumes 2017Sept"
la  var  lowlegumes_aug17 "Low Legumes 2017Aug"
la  var  lowlegumes_jul17 "Low Legumes 2017Jul"
la  var  lowlegumes_jun17 "Low Legumes 2017June"
la  var  lowlegumes_may17 "Low Legumes 2017May"
la  var  lowlegumes_apr17 "Low Legumes 2017Apr"
la  var  lowlegumes_mar17 "Low Legumes 2017March"
la  var  lowlegumes_feb17 "Low Legumes 2017Feb"
la  var  lowlegumes_jan17 "Low Legumes 2017Jan"
la  var  lowlegumes_dec16 "Low Legumes 2016Dec"


la values ///
lowlegumes_nov17 ///
lowlegumes_oct17 ///
lowlegumes_sep17 ///
lowlegumes_aug17 ///
lowlegumes_jul17 ///
lowlegumes_jun17 ///
lowlegumes_may17 ///
lowlegumes_apr17 ///
lowlegumes_mar17 ///
lowlegumes_feb17 ///
lowlegumes_jan17 ///
lowlegumes_dec16 ///
yesno
********************************************************************************
gen avelegumes_nov17 = strpos(g03c, "a")
gen avelegumes_oct17 = strpos(g03c, "b")
gen avelegumes_sep17 = strpos(g03c, "c")
gen avelegumes_aug17 = strpos(g03c, "d")
gen avelegumes_jul17 = strpos(g03c, "e")
gen avelegumes_jun17 = strpos(g03c, "f")
gen avelegumes_may17 = strpos(g03c, "g")
gen avelegumes_apr17 = strpos(g03c, "h")
gen avelegumes_mar17 = strpos(g03c, "i")
gen avelegumes_feb17 = strpos(g03c, "j")
gen avelegumes_jan17 = strpos(g03c, "k")
gen avelegumes_dec16 = strpos(g03c, "l")

replace avelegumes_nov17 = 1 if avelegumes_nov17 >1
replace avelegumes_oct17 = 1 if avelegumes_oct17 >1
replace avelegumes_sep17 = 1 if avelegumes_sep17 >1
replace avelegumes_aug17 = 1 if avelegumes_aug17 >1
replace avelegumes_jul17 = 1 if avelegumes_jul17 >1
replace avelegumes_jun17 = 1 if avelegumes_jun17 >1
replace avelegumes_may17 = 1 if avelegumes_may17 >1
replace avelegumes_apr17 = 1 if avelegumes_apr17 >1
replace avelegumes_mar17 = 1 if avelegumes_mar17 >1
replace avelegumes_feb17 = 1 if avelegumes_feb17 >1
replace avelegumes_jan17 = 1 if avelegumes_jan17 >1
replace avelegumes_dec16 = 1 if avelegumes_dec16 >1

la  var  avelegumes_nov17 "Av Legumes 2017Nov"
la  var  avelegumes_oct17 "Av Legumes 2017Oct"
la  var  avelegumes_sep17 "Av Legumes 2017Sept"
la  var  avelegumes_aug17 "Av Legumes 2017Aug"
la  var  avelegumes_jul17 "Av Legumes 2017Jul"
la  var  avelegumes_jun17 "Av Legumes 2017June"
la  var  avelegumes_may17 "Av Legumes 2017May"
la  var  avelegumes_apr17 "Av Legumes 2017Apr"
la  var  avelegumes_mar17 "Av Legumes 2017March"
la  var  avelegumes_feb17 "Av Legumes 2017Feb"
la  var  avelegumes_jan17 "Av Legumes 2017Jan"
la  var  avelegumes_dec16 "Av Legumes 2016Dec"

la values ///
avelegumes_nov17 ///
avelegumes_oct17 ///
avelegumes_sep17 ///
avelegumes_aug17 ///
avelegumes_jul17 ///
avelegumes_jun17 ///
avelegumes_may17 ///
avelegumes_apr17 ///
avelegumes_mar17 ///
avelegumes_feb17 ///
avelegumes_jan17 ///
avelegumes_dec16 ///
yesno
********************************************************************************
gen highlegumes_nov17 = strpos(g03d, "a")
gen highlegumes_oct17 = strpos(g03d, "b")
gen highlegumes_sep17 = strpos(g03d, "c")
gen highlegumes_aug17 = strpos(g03d, "d")
gen highlegumes_jul17 = strpos(g03d, "e")
gen highlegumes_jun17 = strpos(g03d, "f")
gen highlegumes_may17 = strpos(g03d, "g")
gen highlegumes_apr17 = strpos(g03d, "h")
gen highlegumes_mar17 = strpos(g03d, "i")
gen highlegumes_feb17 = strpos(g03d, "j")
gen highlegumes_jan17 = strpos(g03d, "k")
gen highlegumes_dec16 = strpos(g03d, "l")

replace highlegumes_nov17 = 1 if highlegumes_nov17 >1
replace highlegumes_oct17 = 1 if highlegumes_oct17 >1
replace highlegumes_sep17 = 1 if highlegumes_sep17 >1
replace highlegumes_aug17 = 1 if highlegumes_aug17 >1
replace highlegumes_jul17 = 1 if highlegumes_jul17 >1
replace highlegumes_jun17 = 1 if highlegumes_jun17 >1
replace highlegumes_may17 = 1 if highlegumes_may17 >1
replace highlegumes_apr17 = 1 if highlegumes_apr17 >1
replace highlegumes_mar17 = 1 if highlegumes_mar17 >1
replace highlegumes_feb17 = 1 if highlegumes_feb17 >1
replace highlegumes_jan17 = 1 if highlegumes_jan17 >1
replace highlegumes_dec16 = 1 if highlegumes_dec16 >1

la  var  highlegumes_nov17 "High Legumes 2017Nov"
la  var  highlegumes_oct17 "High Legumes 2017Oct"
la  var  highlegumes_sep17 "High Legumes 2017Sept"
la  var  highlegumes_aug17 "High Legumes 2017Aug"
la  var  highlegumes_jul17 "High Legumes 2017Jul"
la  var  highlegumes_jun17 "High Legumes 2017June"
la  var  highlegumes_may17 "High Legumes 2017May"
la  var  highlegumes_apr17 "High Legumes 2017Apr"
la  var  highlegumes_mar17 "High Legumes 2017March"
la  var  highlegumes_feb17 "High Legumes 2017Feb"
la  var  highlegumes_jan17 "High Legumes 2017Jan"
la  var  highlegumes_dec16 "High Legumes 2016Dec"

la values ///
highlegumes_nov17 ///
highlegumes_oct17 ///
highlegumes_sep17 ///
highlegumes_aug17 ///
highlegumes_jul17 ///
highlegumes_jun17 ///
highlegumes_may17 ///
highlegumes_apr17 ///
highlegumes_mar17 ///
highlegumes_feb17 ///
highlegumes_jan17 ///
highlegumes_dec16 ///
yesno
********************************************************************************
gen oveges_nov17 = strpos(g04a, "a")
gen oveges_oct17 = strpos(g04a, "b")
gen oveges_sep17 = strpos(g04a, "c")
gen oveges_aug17 = strpos(g04a, "d")
gen oveges_jul17 = strpos(g04a, "e")
gen oveges_jun17 = strpos(g04a, "f")
gen oveges_may17 = strpos(g04a, "g")
gen oveges_apr17 = strpos(g04a, "h")
gen oveges_mar17 = strpos(g04a, "i")
gen oveges_feb17 = strpos(g04a, "j")
gen oveges_jan17 = strpos(g04a, "k")
gen oveges_dec16 = strpos(g04a, "l")

replace oveges_nov17 = 1 if oveges_nov17 >1
replace oveges_oct17 = 1 if oveges_oct17 >1
replace oveges_sep17 = 1 if oveges_sep17 >1
replace oveges_aug17 = 1 if oveges_aug17 >1
replace oveges_jul17 = 1 if oveges_jul17 >1
replace oveges_jun17 = 1 if oveges_jun17 >1
replace oveges_may17 = 1 if oveges_may17 >1
replace oveges_apr17 = 1 if oveges_apr17 >1
replace oveges_mar17 = 1 if oveges_mar17 >1
replace oveges_feb17 = 1 if oveges_feb17 >1
replace oveges_jan17 = 1 if oveges_jan17 >1
replace oveges_dec16 = 1 if oveges_dec16 >1

la  var  oveges_nov17 "No Oveges 2017Nov"
la  var  oveges_oct17 "No Oveges 2017Oct"
la  var  oveges_sep17 "No Oveges 2017Sept"
la  var  oveges_aug17 "No Oveges 2017Aug"
la  var  oveges_jul17 "No Oveges 2017Jul"
la  var  oveges_jun17 "No Oveges 2017June"
la  var  oveges_may17 "No Oveges 2017May"
la  var  oveges_apr17 "No Oveges 2017Apr"
la  var  oveges_mar17 "No Oveges 2017March"
la  var  oveges_feb17 "No Oveges 2017Feb"
la  var  oveges_jan17 "No Oveges 2017Jan"
la  var  oveges_dec16 "No Oveges 2016Dec"


la values ///
oveges_nov17 ///
oveges_oct17 ///
oveges_sep17 ///
oveges_aug17 ///
oveges_jul17 ///
oveges_jun17 ///
oveges_may17 ///
oveges_apr17 ///
oveges_mar17 ///
oveges_feb17 ///
oveges_jan17 ///
oveges_dec16 ///
yesno
********************************************************************************
gen lowoveges_nov17 = strpos(g04b, "a")
gen lowoveges_oct17 = strpos(g04b, "b")
gen lowoveges_sep17 = strpos(g04b, "c")
gen lowoveges_aug17 = strpos(g04b, "d")
gen lowoveges_jul17 = strpos(g04b, "e")
gen lowoveges_jun17 = strpos(g04b, "f")
gen lowoveges_may17 = strpos(g04b, "g")
gen lowoveges_apr17 = strpos(g04b, "h")
gen lowoveges_mar17 = strpos(g04b, "i")
gen lowoveges_feb17 = strpos(g04b, "j")
gen lowoveges_jan17 = strpos(g04b, "k")
gen lowoveges_dec16 = strpos(g04b, "l")

replace lowoveges_nov17 = 1 if lowoveges_nov17 >1
replace lowoveges_oct17 = 1 if lowoveges_oct17 >1
replace lowoveges_sep17 = 1 if lowoveges_sep17 >1
replace lowoveges_aug17 = 1 if lowoveges_aug17 >1
replace lowoveges_jul17 = 1 if lowoveges_jul17 >1
replace lowoveges_jun17 = 1 if lowoveges_jun17 >1
replace lowoveges_may17 = 1 if lowoveges_may17 >1
replace lowoveges_apr17 = 1 if lowoveges_apr17 >1
replace lowoveges_mar17 = 1 if lowoveges_mar17 >1
replace lowoveges_feb17 = 1 if lowoveges_feb17 >1
replace lowoveges_jan17 = 1 if lowoveges_jan17 >1
replace lowoveges_dec16 = 1 if lowoveges_dec16 >1

la  var  lowoveges_nov17 "Low Oveges 2017Nov"
la  var  lowoveges_oct17 "Low Oveges 2017Oct"
la  var  lowoveges_sep17 "Low Oveges 2017Sept"
la  var  lowoveges_aug17 "Low Oveges 2017Aug"
la  var  lowoveges_jul17 "Low Oveges 2017Jul"
la  var  lowoveges_jun17 "Low Oveges 2017June"
la  var  lowoveges_may17 "Low Oveges 2017May"
la  var  lowoveges_apr17 "Low Oveges 2017Apr"
la  var  lowoveges_mar17 "Low Oveges 2017March"
la  var  lowoveges_feb17 "Low Oveges 2017Feb"
la  var  lowoveges_jan17 "Low Oveges 2017Jan"
la  var  lowoveges_dec16 "Low Oveges 2016Dec"

la values ///
lowoveges_nov17 ///
lowoveges_oct17 ///
lowoveges_sep17 ///
lowoveges_aug17 ///
lowoveges_jul17 ///
lowoveges_jun17 ///
lowoveges_may17 ///
lowoveges_apr17 ///
lowoveges_mar17 ///
lowoveges_feb17 ///
lowoveges_jan17 ///
lowoveges_dec16 ///
yesno
********************************************************************************
gen av_oveges_nov17 = strpos(g04c, "a")
gen av_oveges_oct17 = strpos(g04c, "b")
gen av_oveges_sep17 = strpos(g04c, "c")
gen av_oveges_aug17 = strpos(g04c, "d")
gen av_oveges_jul17 = strpos(g04c, "e")
gen av_oveges_jun17 = strpos(g04c, "f")
gen av_oveges_may17 = strpos(g04c, "g")
gen av_oveges_apr17 = strpos(g04c, "h")
gen av_oveges_mar17 = strpos(g04c, "i")
gen av_oveges_feb17 = strpos(g04c, "j")
gen av_oveges_jan17 = strpos(g04c, "k")
gen av_oveges_dec16 = strpos(g04c, "l")

replace av_oveges_nov17 = 1 if av_oveges_nov17 >1
replace av_oveges_oct17 = 1 if av_oveges_oct17 >1
replace av_oveges_sep17 = 1 if av_oveges_sep17 >1
replace av_oveges_aug17 = 1 if av_oveges_aug17 >1
replace av_oveges_jul17 = 1 if av_oveges_jul17 >1
replace av_oveges_jun17 = 1 if av_oveges_jun17 >1
replace av_oveges_may17 = 1 if av_oveges_may17 >1
replace av_oveges_apr17 = 1 if av_oveges_apr17 >1
replace av_oveges_mar17 = 1 if av_oveges_mar17 >1
replace av_oveges_feb17 = 1 if av_oveges_feb17 >1
replace av_oveges_jan17 = 1 if av_oveges_jan17 >1
replace av_oveges_dec16 = 1 if av_oveges_dec16 >1

la  var  av_oveges_nov17 "Av Oveges 2017Nov"
la  var  av_oveges_oct17 "Av Oveges 2017Oct"
la  var  av_oveges_sep17 "Av Oveges 2017Sept"
la  var  av_oveges_aug17 "Av Oveges 2017Aug"
la  var  av_oveges_jul17 "Av Oveges 2017Jul"
la  var  av_oveges_jun17 "Av Oveges 2017June"
la  var  av_oveges_may17 "Av Oveges 2017May"
la  var  av_oveges_apr17 "Av Oveges 2017Apr"
la  var  av_oveges_mar17 "Av Oveges 2017March"
la  var  av_oveges_feb17 "Av Oveges 2017Feb"
la  var  av_oveges_jan17 "Av Oveges 2017Jan"
la  var  av_oveges_dec16 "Av Oveges 2016Dec"

la values ///
av_oveges_nov17 ///
av_oveges_oct17 ///
av_oveges_sep17 ///
av_oveges_aug17 ///
av_oveges_jul17 ///
av_oveges_jun17 ///
av_oveges_may17 ///
av_oveges_apr17 ///
av_oveges_mar17 ///
av_oveges_feb17 ///
av_oveges_jan17 ///
av_oveges_dec16 ///
yesno
********************************************************************************
gen high_oveges_nov17 = strpos(g04d, "a")
gen high_oveges_oct17 = strpos(g04d, "b")
gen high_oveges_sep17 = strpos(g04d, "c")
gen high_oveges_aug17 = strpos(g04d, "d")
gen high_oveges_jul17 = strpos(g04d, "e")
gen high_oveges_jun17 = strpos(g04d, "f")
gen high_oveges_may17 = strpos(g04d, "g")
gen high_oveges_apr17 = strpos(g04d, "h")
gen high_oveges_mar17 = strpos(g04d, "i")
gen high_oveges_feb17 = strpos(g04d, "j")
gen high_oveges_jan17 = strpos(g04d, "k")
gen high_oveges_dec16 = strpos(g04d, "l")

replace high_oveges_nov17 = 1 if high_oveges_nov17 >1
replace high_oveges_oct17 = 1 if high_oveges_oct17 >1
replace high_oveges_sep17 = 1 if high_oveges_sep17 >1
replace high_oveges_aug17 = 1 if high_oveges_aug17 >1
replace high_oveges_jul17 = 1 if high_oveges_jul17 >1
replace high_oveges_jun17 = 1 if high_oveges_jun17 >1
replace high_oveges_may17 = 1 if high_oveges_may17 >1
replace high_oveges_apr17 = 1 if high_oveges_apr17 >1
replace high_oveges_mar17 = 1 if high_oveges_mar17 >1
replace high_oveges_feb17 = 1 if high_oveges_feb17 >1
replace high_oveges_jan17 = 1 if high_oveges_jan17 >1
replace high_oveges_dec16 = 1 if high_oveges_dec16 >1

la  var  high_oveges_nov17 "High Oveges 2017Nov"
la  var  high_oveges_oct17 "High Oveges 2017Oct"
la  var  high_oveges_sep17 "High Oveges 2017Sept"
la  var  high_oveges_aug17 "High Oveges 2017Aug"
la  var  high_oveges_jul17 "High Oveges 2017Jul"
la  var  high_oveges_jun17 "High Oveges 2017June"
la  var  high_oveges_may17 "High Oveges 2017May"
la  var  high_oveges_apr17 "High Oveges 2017Apr"
la  var  high_oveges_mar17 "High Oveges 2017March"
la  var  high_oveges_feb17 "High Oveges 2017Feb"
la  var  high_oveges_jan17 "High Oveges 2017Jan"
la  var  high_oveges_dec16 "High Oveges 2016Dec"

la values ///
high_oveges_nov17 ///
high_oveges_oct17 ///
high_oveges_sep17 ///
high_oveges_aug17 ///
high_oveges_jul17 ///
high_oveges_jun17 ///
high_oveges_may17 ///
high_oveges_apr17 ///
high_oveges_mar17 ///
high_oveges_feb17 ///
high_oveges_jan17 ///
high_oveges_dec16 ///
yesno
********************************************************************************
gen no_gveges_nov17 = strpos(g05a, "a")
gen no_gveges_oct17 = strpos(g05a, "b")
gen no_gveges_sep17 = strpos(g05a, "c")
gen no_gveges_aug17 = strpos(g05a, "d")
gen no_gveges_jul17 = strpos(g05a, "e")
gen no_gveges_jun17 = strpos(g05a, "f")
gen no_gveges_may17 = strpos(g05a, "g")
gen no_gveges_apr17 = strpos(g05a, "h")
gen no_gveges_mar17 = strpos(g05a, "i")
gen no_gveges_feb17 = strpos(g05a, "j")
gen no_gveges_jan17 = strpos(g05a, "k")
gen no_gveges_dec16 = strpos(g05a, "l")

replace no_gveges_nov17 = 1 if no_gveges_nov17 >1
replace no_gveges_oct17 = 1 if no_gveges_oct17 >1
replace no_gveges_sep17 = 1 if no_gveges_sep17 >1
replace no_gveges_aug17 = 1 if no_gveges_aug17 >1
replace no_gveges_jul17 = 1 if no_gveges_jul17 >1
replace no_gveges_jun17 = 1 if no_gveges_jun17 >1
replace no_gveges_may17 = 1 if no_gveges_may17 >1
replace no_gveges_apr17 = 1 if no_gveges_apr17 >1
replace no_gveges_mar17 = 1 if no_gveges_mar17 >1
replace no_gveges_feb17 = 1 if no_gveges_feb17 >1
replace no_gveges_jan17 = 1 if no_gveges_jan17 >1
replace no_gveges_dec16 = 1 if no_gveges_dec16 >1

la  var  no_gveges_nov17 "No Gveges 2017Nov"
la  var  no_gveges_oct17 "No Gveges 2017Oct"
la  var  no_gveges_sep17 "No Gveges 2017Sept"
la  var  no_gveges_aug17 "No Gveges 2017Aug"
la  var  no_gveges_jul17 "No Gveges 2017Jul"
la  var  no_gveges_jun17 "No Gveges 2017June"
la  var  no_gveges_may17 "No Gveges 2017May"
la  var  no_gveges_apr17 "No Gveges 2017Apr"
la  var  no_gveges_mar17 "No Gveges 2017March"
la  var  no_gveges_feb17 "No Gveges 2017Feb"
la  var  no_gveges_jan17 "No Gveges 2017Jan"
la  var  no_gveges_dec16 "No Gveges 2016Dec"

la values ///
no_gveges_nov17 ///
no_gveges_oct17 ///
no_gveges_sep17 ///
no_gveges_aug17 ///
no_gveges_jul17 ///
no_gveges_jun17 ///
no_gveges_may17 ///
no_gveges_apr17 ///
no_gveges_mar17 ///
no_gveges_feb17 ///
no_gveges_jan17 ///
no_gveges_dec16 ///
yesno
********************************************************************************
gen low_gveges_nov17 = strpos(g05b, "a")
gen low_gveges_oct17 = strpos(g05b, "b")
gen low_gveges_sep17 = strpos(g05b, "c")
gen low_gveges_aug17 = strpos(g05b, "d")
gen low_gveges_jul17 = strpos(g05b, "e")
gen low_gveges_jun17 = strpos(g05b, "f")
gen low_gveges_may17 = strpos(g05b, "g")
gen low_gveges_apr17 = strpos(g05b, "h")
gen low_gveges_mar17 = strpos(g05b, "i")
gen low_gveges_feb17 = strpos(g05b, "j")
gen low_gveges_jan17 = strpos(g05b, "k")
gen low_gveges_dec16 = strpos(g05b, "l")

replace low_gveges_nov17 = 1 if low_gveges_nov17 >1
replace low_gveges_oct17 = 1 if low_gveges_oct17 >1
replace low_gveges_sep17 = 1 if low_gveges_sep17 >1
replace low_gveges_aug17 = 1 if low_gveges_aug17 >1
replace low_gveges_jul17 = 1 if low_gveges_jul17 >1
replace low_gveges_jun17 = 1 if low_gveges_jun17 >1
replace low_gveges_may17 = 1 if low_gveges_may17 >1
replace low_gveges_apr17 = 1 if low_gveges_apr17 >1
replace low_gveges_mar17 = 1 if low_gveges_mar17 >1
replace low_gveges_feb17 = 1 if low_gveges_feb17 >1
replace low_gveges_jan17 = 1 if low_gveges_jan17 >1
replace low_gveges_dec16 = 1 if low_gveges_dec16 >1

la  var  low_gveges_nov17 "Low Gveges 2017Nov"
la  var  low_gveges_oct17 "Low Gveges 2017Oct"
la  var  low_gveges_sep17 "Low Gveges 2017Sept"
la  var  low_gveges_aug17 "Low Gveges 2017Aug"
la  var  low_gveges_jul17 "Low Gveges 2017Jul"
la  var  low_gveges_jun17 "Low Gveges 2017June"
la  var  low_gveges_may17 "Low Gveges 2017May"
la  var  low_gveges_apr17 "Low Gveges 2017Apr"
la  var  low_gveges_mar17 "Low Gveges 2017March"
la  var  low_gveges_feb17 "Low Gveges 2017Feb"
la  var  low_gveges_jan17 "Low Gveges 2017Jan"
la  var  low_gveges_dec16 "Low Gveges 2016Dec"

la values ///
low_gveges_nov17 ///
low_gveges_oct17 ///
low_gveges_sep17 ///
low_gveges_aug17 ///
low_gveges_jul17 ///
low_gveges_jun17 ///
low_gveges_may17 ///
low_gveges_apr17 ///
low_gveges_mar17 ///
low_gveges_feb17 ///
low_gveges_jan17 ///
low_gveges_dec16 ///
yesno
********************************************************************************
gen av_gveges_nov17 = strpos(g05c, "a")
gen av_gveges_oct17 = strpos(g05c, "b")
gen av_gveges_sep17 = strpos(g05c, "c")
gen av_gveges_aug17 = strpos(g05c, "d")
gen av_gveges_jul17 = strpos(g05c, "e")
gen av_gveges_jun17 = strpos(g05c, "f")
gen av_gveges_may17 = strpos(g05c, "g")
gen av_gveges_apr17 = strpos(g05c, "h")
gen av_gveges_mar17 = strpos(g05c, "i")
gen av_gveges_feb17 = strpos(g05c, "j")
gen av_gveges_jan17 = strpos(g05c, "k")
gen av_gveges_dec16 = strpos(g05c, "l")

replace av_gveges_nov17 = 1 if av_gveges_nov17 >1
replace av_gveges_oct17 = 1 if av_gveges_oct17 >1
replace av_gveges_sep17 = 1 if av_gveges_sep17 >1
replace av_gveges_aug17 = 1 if av_gveges_aug17 >1
replace av_gveges_jul17 = 1 if av_gveges_jul17 >1
replace av_gveges_jun17 = 1 if av_gveges_jun17 >1
replace av_gveges_may17 = 1 if av_gveges_may17 >1
replace av_gveges_apr17 = 1 if av_gveges_apr17 >1
replace av_gveges_mar17 = 1 if av_gveges_mar17 >1
replace av_gveges_feb17 = 1 if av_gveges_feb17 >1
replace av_gveges_jan17 = 1 if av_gveges_jan17 >1
replace av_gveges_dec16 = 1 if av_gveges_dec16 >1

la  var  av_gveges_nov17 "Av Gveges 2017Nov"
la  var  av_gveges_oct17 "Av Gveges 2017Oct"
la  var  av_gveges_sep17 "Av Gveges 2017Sept"
la  var  av_gveges_aug17 "Av Gveges 2017Aug"
la  var  av_gveges_jul17 "Av Gveges 2017Jul"
la  var  av_gveges_jun17 "Av Gveges 2017June"
la  var  av_gveges_may17 "Av Gveges 2017May"
la  var  av_gveges_apr17 "Av Gveges 2017Apr"
la  var  av_gveges_mar17 "Av Gveges 2017March"
la  var  av_gveges_feb17 "Av Gveges 2017Feb"
la  var  av_gveges_jan17 "Av Gveges 2017Jan"
la  var  av_gveges_dec16 "Av Gveges 2016Dec"

la values ///
av_gveges_nov17 ///
av_gveges_oct17 ///
av_gveges_sep17 ///
av_gveges_aug17 ///
av_gveges_jul17 ///
av_gveges_jun17 ///
av_gveges_may17 ///
av_gveges_apr17 ///
av_gveges_mar17 ///
av_gveges_feb17 ///
av_gveges_jan17 ///
av_gveges_dec16 ///
yesno
********************************************************************************
gen high_gveges_nov17 = strpos(g05d, "a")
gen high_gveges_oct17 = strpos(g05d, "b")
gen high_gveges_sep17 = strpos(g05d, "c")
gen high_gveges_aug17 = strpos(g05d, "d")
gen high_gveges_jul17 = strpos(g05d, "e")
gen high_gveges_jun17 = strpos(g05d, "f")
gen high_gveges_may17 = strpos(g05d, "g")
gen high_gveges_apr17 = strpos(g05d, "h")
gen high_gveges_mar17 = strpos(g05d, "i")
gen high_gveges_feb17 = strpos(g05d, "j")
gen high_gveges_jan17 = strpos(g05d, "k")
gen high_gveges_dec16 = strpos(g05d, "l")

replace high_gveges_nov17 = 1 if high_gveges_nov17 >1
replace high_gveges_oct17 = 1 if high_gveges_oct17 >1
replace high_gveges_sep17 = 1 if high_gveges_sep17 >1
replace high_gveges_aug17 = 1 if high_gveges_aug17 >1
replace high_gveges_jul17 = 1 if high_gveges_jul17 >1
replace high_gveges_jun17 = 1 if high_gveges_jun17 >1
replace high_gveges_may17 = 1 if high_gveges_may17 >1
replace high_gveges_apr17 = 1 if high_gveges_apr17 >1
replace high_gveges_mar17 = 1 if high_gveges_mar17 >1
replace high_gveges_feb17 = 1 if high_gveges_feb17 >1
replace high_gveges_jan17 = 1 if high_gveges_jan17 >1
replace high_gveges_dec16 = 1 if high_gveges_dec16 >1

la  var  high_gveges_nov17 "High Gveges 2017Nov"
la  var  high_gveges_oct17 "High Gveges 2017Oct"
la  var  high_gveges_sep17 "High Gveges 2017Sept"
la  var  high_gveges_aug17 "High Gveges 2017Aug"
la  var  high_gveges_jul17 "High Gveges 2017Jul"
la  var  high_gveges_jun17 "High Gveges 2017June"
la  var  high_gveges_may17 "High Gveges 2017May"
la  var  high_gveges_apr17 "High Gveges 2017Apr"
la  var  high_gveges_mar17 "High Gveges 2017March"
la  var  high_gveges_feb17 "High Gveges 2017Feb"
la  var  high_gveges_jan17 "High Gveges 2017Jan"
la  var  high_gveges_dec16 "High Gveges 2016Dec"

la values ///
high_gveges_nov17 ///
high_gveges_oct17 ///
high_gveges_sep17 ///
high_gveges_aug17 ///
high_gveges_jul17 ///
high_gveges_jun17 ///
high_gveges_may17 ///
high_gveges_apr17 ///
high_gveges_mar17 ///
high_gveges_feb17 ///
high_gveges_jan17 ///
high_gveges_dec16 ///
yesno
********************************************************************************
*gen no_othveges_nov17 = strpos(g06a, "a")
gen no_othveges_oct17 = strpos(g06a, "b")
gen no_othveges_sep17 = strpos(g06a, "c")
gen no_othveges_aug17 = strpos(g06a, "d")
gen no_othveges_jul17 = strpos(g06a, "e")
gen no_othveges_jun17 = strpos(g06a, "f")
gen no_othveges_may17 = strpos(g06a, "g")
gen no_othveges_apr17 = strpos(g06a, "h")
gen no_othveges_mar17 = strpos(g06a, "i")
gen no_othveges_feb17 = strpos(g06a, "j")
gen no_othveges_jan17 = strpos(g06a, "k")
gen no_othveges_dec16 = strpos(g06a, "l")


replace no_othveges_nov17 = 1 if no_othveges_nov17 >1
replace no_othveges_oct17 = 1 if no_othveges_oct17 >1
replace no_othveges_sep17 = 1 if no_othveges_sep17 >1
replace no_othveges_aug17 = 1 if no_othveges_aug17 >1
replace no_othveges_jul17 = 1 if no_othveges_jul17 >1
replace no_othveges_jun17 = 1 if no_othveges_jun17 >1
replace no_othveges_may17 = 1 if no_othveges_may17 >1
replace no_othveges_apr17 = 1 if no_othveges_apr17 >1
replace no_othveges_mar17 = 1 if no_othveges_mar17 >1
replace no_othveges_feb17 = 1 if no_othveges_feb17 >1
replace no_othveges_jan17 = 1 if no_othveges_jan17 >1
replace no_othveges_dec16 = 1 if no_othveges_dec16 >1

la  var  no_othveges_nov17 "No Other veges 2017Nov"
la  var  no_othveges_oct17 "No Other veges 2017Oct"
la  var  no_othveges_sep17 "No Other veges 2017Sept"
la  var  no_othveges_aug17 "No Other veges 2017Aug"
la  var  no_othveges_jul17 "No Other veges 2017Jul"
la  var  no_othveges_jun17 "No Other veges 2017June"
la  var  no_othveges_may17 "No Other veges 2017May"
la  var  no_othveges_apr17 "No Other veges 2017Apr"
la  var  no_othveges_mar17 "No Other veges 2017March"
la  var  no_othveges_feb17 "No Other veges 2017Feb"
la  var  no_othveges_jan17 "No Other veges 2017Jan"
la  var  no_othveges_dec16 "No Other veges 2016Dec"


la values ///
no_othveges_nov17 ///
no_othveges_oct17 ///
no_othveges_sep17 ///
no_othveges_aug17 ///
no_othveges_jul17 ///
no_othveges_jun17 ///
no_othveges_may17 ///
no_othveges_apr17 ///
no_othveges_mar17 ///
no_othveges_feb17 ///
no_othveges_jan17 ///
no_othveges_dec16 ///
yesno
********************************************************************************
gen low_othveges_nov17 = strpos(g06b, "a")
gen low_othveges_oct17 = strpos(g06b, "b")
gen low_othveges_sep17 = strpos(g06b, "c")
gen low_othveges_aug17 = strpos(g06b, "d")
gen low_othveges_jul17 = strpos(g06b, "e")
gen low_othveges_jun17 = strpos(g06b, "f")
gen low_othveges_may17 = strpos(g06b, "g")
gen low_othveges_apr17 = strpos(g06b, "h")
gen low_othveges_mar17 = strpos(g06b, "i")
gen low_othveges_feb17 = strpos(g06b, "j")
gen low_othveges_jan17 = strpos(g06b, "k")
gen low_othveges_dec16 = strpos(g06b, "l")

replace low_othveges_nov17 = 1 if low_othveges_nov17 >1
replace low_othveges_oct17 = 1 if low_othveges_oct17 >1
replace low_othveges_sep17 = 1 if low_othveges_sep17 >1
replace low_othveges_aug17 = 1 if low_othveges_aug17 >1
replace low_othveges_jul17 = 1 if low_othveges_jul17 >1
replace low_othveges_jun17 = 1 if low_othveges_jun17 >1
replace low_othveges_may17 = 1 if low_othveges_may17 >1
replace low_othveges_apr17 = 1 if low_othveges_apr17 >1
replace low_othveges_mar17 = 1 if low_othveges_mar17 >1
replace low_othveges_feb17 = 1 if low_othveges_feb17 >1
replace low_othveges_jan17 = 1 if low_othveges_jan17 >1
replace low_othveges_dec16 = 1 if low_othveges_dec16 >1

la  var  low_othveges_nov17 "Low Other veges 2017Nov"
la  var  low_othveges_oct17 "Low Other veges 2017Oct"
la  var  low_othveges_sep17 "Low Other veges 2017Sept"
la  var  low_othveges_aug17 "Low Other veges 2017Aug"
la  var  low_othveges_jul17 "Low Other veges 2017Jul"
la  var  low_othveges_jun17 "Low Other veges 2017June"
la  var  low_othveges_may17 "Low Other veges 2017May"
la  var  low_othveges_apr17 "Low Other veges 2017Apr"
la  var  low_othveges_mar17 "Low Other veges 2017March"
la  var  low_othveges_feb17 "Low Other veges 2017Feb"
la  var  low_othveges_jan17 "Low Other veges 2017Jan"
la  var  low_othveges_dec16 "Low Other veges 2016Dec"

la values ///
low_othveges_nov17 ///
low_othveges_oct17 ///
low_othveges_sep17 ///
low_othveges_aug17 ///
low_othveges_jul17 ///
low_othveges_jun17 ///
low_othveges_may17 ///
low_othveges_apr17 ///
low_othveges_mar17 ///
low_othveges_feb17 ///
low_othveges_jan17 ///
low_othveges_dec16 ///
yesno
********************************************************************************
gen av_othveges_nov17 = strpos(g06c, "a")
gen av_othveges_oct17 = strpos(g06c, "b")
gen av_othveges_sep17 = strpos(g06c, "c")
gen av_othveges_aug17 = strpos(g06c, "d")
gen av_othveges_jul17 = strpos(g06c, "e")
gen av_othveges_jun17 = strpos(g06c, "f")
gen av_othveges_may17 = strpos(g06c, "g")
gen av_othveges_apr17 = strpos(g06c, "h")
gen av_othveges_mar17 = strpos(g06c, "i")
gen av_othveges_feb17 = strpos(g06c, "j")
gen av_othveges_jan17 = strpos(g06c, "k")
gen av_othveges_dec16 = strpos(g06c, "l")

replace av_othveges_nov17 = 1 if av_othveges_nov17 >1
replace av_othveges_oct17 = 1 if av_othveges_oct17 >1
replace av_othveges_sep17 = 1 if av_othveges_sep17 >1
replace av_othveges_aug17 = 1 if av_othveges_aug17 >1
replace av_othveges_jul17 = 1 if av_othveges_jul17 >1
replace av_othveges_jun17 = 1 if av_othveges_jun17 >1
replace av_othveges_may17 = 1 if av_othveges_may17 >1
replace av_othveges_apr17 = 1 if av_othveges_apr17 >1
replace av_othveges_mar17 = 1 if av_othveges_mar17 >1
replace av_othveges_feb17 = 1 if av_othveges_feb17 >1
replace av_othveges_jan17 = 1 if av_othveges_jan17 >1
replace av_othveges_dec16 = 1 if av_othveges_dec16 >1

la  var  av_othveges_nov17 "AV Other veges 2017Nov"
la  var  av_othveges_oct17 "AV Other veges 2017Oct"
la  var  av_othveges_sep17 "AV Other veges 2017Sept"
la  var  av_othveges_aug17 "AV Other veges 2017Aug"
la  var  av_othveges_jul17 "AV Other veges 2017Jul"
la  var  av_othveges_jun17 "AV Other veges 2017June"
la  var  av_othveges_may17 "AV Other veges 2017May"
la  var  av_othveges_apr17 "AV Other veges 2017Apr"
la  var  av_othveges_mar17 "AV Other veges 2017March"
la  var  av_othveges_feb17 "AV Other veges 2017Feb"
la  var  av_othveges_jan17 "AV Other veges 2017Jan"
la  var  av_othveges_dec16 "AV Other veges 2016Dec"

la values ///
av_othveges_nov17 ///
av_othveges_oct17 ///
av_othveges_sep17 ///
av_othveges_aug17 ///
av_othveges_jul17 ///
av_othveges_jun17 ///
av_othveges_may17 ///
av_othveges_apr17 ///
av_othveges_mar17 ///
av_othveges_feb17 ///
av_othveges_jan17 ///
av_othveges_dec16 ///
yesno
********************************************************************************
gen high_othveges_nov17 = strpos(g06d, "a")
gen high_othveges_oct17 = strpos(g06d, "b")
gen high_othveges_sep17 = strpos(g06d, "c")
gen high_othveges_aug17 = strpos(g06d, "d")
gen high_othveges_jul17 = strpos(g06d, "e")
gen high_othveges_jun17 = strpos(g06d, "f")
gen high_othveges_may17 = strpos(g06d, "g")
gen high_othveges_apr17 = strpos(g06d, "h")
gen high_othveges_mar17 = strpos(g06d, "i")
gen high_othveges_feb17 = strpos(g06d, "j")
gen high_othveges_jan17 = strpos(g06d, "k")
gen high_othveges_dec16 = strpos(g06d, "l")

replace high_othveges_nov17 = 1 if high_othveges_nov17 >1
replace high_othveges_oct17 = 1 if high_othveges_oct17 >1
replace high_othveges_sep17 = 1 if high_othveges_sep17 >1
replace high_othveges_aug17 = 1 if high_othveges_aug17 >1
replace high_othveges_jul17 = 1 if high_othveges_jul17 >1
replace high_othveges_jun17 = 1 if high_othveges_jun17 >1
replace high_othveges_may17 = 1 if high_othveges_may17 >1
replace high_othveges_apr17 = 1 if high_othveges_apr17 >1
replace high_othveges_mar17 = 1 if high_othveges_mar17 >1
replace high_othveges_feb17 = 1 if high_othveges_feb17 >1
replace high_othveges_jan17 = 1 if high_othveges_jan17 >1
replace high_othveges_dec16 = 1 if high_othveges_dec16 >1

la  var  high_othveges_nov17 "AV Other veges 2017Nov"
la  var  high_othveges_oct17 "AV Other veges 2017Oct"
la  var  high_othveges_sep17 "AV Other veges 2017Sept"
la  var  high_othveges_aug17 "AV Other veges 2017Aug"
la  var  high_othveges_jul17 "AV Other veges 2017Jul"
la  var  high_othveges_jun17 "AV Other veges 2017June"
la  var  high_othveges_may17 "AV Other veges 2017May"
la  var  high_othveges_apr17 "AV Other veges 2017Apr"
la  var  high_othveges_mar17 "AV Other veges 2017March"
la  var  high_othveges_feb17 "AV Other veges 2017Feb"
la  var  high_othveges_jan17 "AV Other veges 2017Jan"
la  var  high_othveges_dec16 "AV Other veges 2016Dec"

la values ///
high_othveges_nov17 ///
high_othveges_oct17 ///
high_othveges_sep17 ///
high_othveges_aug17 ///
high_othveges_jul17 ///
high_othveges_jun17 ///
high_othveges_may17 ///
high_othveges_apr17 ///
high_othveges_mar17 ///
high_othveges_feb17 ///
high_othveges_jan17 ///
high_othveges_dec16 ///
yesno
********************************************************************************
gen no_or_fruits_nov17 = strpos(g07a, "a")
gen no_or_fruits_oct17 = strpos(g07a, "b")
gen no_or_fruits_sep17 = strpos(g07a, "c")
gen no_or_fruits_aug17 = strpos(g07a, "d")
gen no_or_fruits_jul17 = strpos(g07a, "e")
gen no_or_fruits_jun17 = strpos(g07a, "f")
gen no_or_fruits_may17 = strpos(g07a, "g")
gen no_or_fruits_apr17 = strpos(g07a, "h")
gen no_or_fruits_mar17 = strpos(g07a, "i")
gen no_or_fruits_feb17 = strpos(g07a, "j")
gen no_or_fruits_jan17 = strpos(g07a, "k")
gen no_or_fruits_dec16 = strpos(g07a, "l")

replace no_or_fruits_nov17 = 1 if no_or_fruits_nov17 >1
replace no_or_fruits_oct17 = 1 if no_or_fruits_oct17 >1
replace no_or_fruits_sep17 = 1 if no_or_fruits_sep17 >1
replace no_or_fruits_aug17 = 1 if no_or_fruits_aug17 >1
replace no_or_fruits_jul17 = 1 if no_or_fruits_jul17 >1
replace no_or_fruits_jun17 = 1 if no_or_fruits_jun17 >1
replace no_or_fruits_may17 = 1 if no_or_fruits_may17 >1
replace no_or_fruits_apr17 = 1 if no_or_fruits_apr17 >1
replace no_or_fruits_mar17 = 1 if no_or_fruits_mar17 >1
replace no_or_fruits_feb17 = 1 if no_or_fruits_feb17 >1
replace no_or_fruits_jan17 = 1 if no_or_fruits_jan17 >1
replace no_or_fruits_dec16 = 1 if no_or_fruits_dec16 >1

la  var  no_or_fruits_nov17 "No orange fruits 2017Nov"
la  var  no_or_fruits_oct17 "No orange fruits 2017Oct"
la  var  no_or_fruits_sep17 "No orange fruits 2017Sept"
la  var  no_or_fruits_aug17 "No orange fruits 2017Aug"
la  var  no_or_fruits_jul17 "No orange fruits 2017Jul"
la  var  no_or_fruits_jun17 "No orange fruits 2017June"
la  var  no_or_fruits_may17 "No orange fruits 2017May"
la  var  no_or_fruits_apr17 "No orange fruits 2017Apr"
la  var  no_or_fruits_mar17 "No orange fruits 2017March"
la  var  no_or_fruits_feb17 "No orange fruits 2017Feb"
la  var  no_or_fruits_jan17 "No orange fruits 2017Jan"
la  var  no_or_fruits_dec16 "No orange fruits 2016Dec"

la values ///
no_or_fruits_nov17 ///
no_or_fruits_oct17 ///
no_or_fruits_sep17 ///
no_or_fruits_aug17 ///
no_or_fruits_jul17 ///
no_or_fruits_jun17 ///
no_or_fruits_may17 ///
no_or_fruits_apr17 ///
no_or_fruits_mar17 ///
no_or_fruits_feb17 ///
no_or_fruits_jan17 ///
no_or_fruits_dec16 ///
yesno
********************************************************************************
gen low_or_fruits_nov17 = strpos(g07b, "a")
gen low_or_fruits_oct17 = strpos(g07b, "b")
gen low_or_fruits_sep17 = strpos(g07b, "c")
gen low_or_fruits_aug17 = strpos(g07b, "d")
gen low_or_fruits_jul17 = strpos(g07b, "e")
gen low_or_fruits_jun17 = strpos(g07b, "f")
gen low_or_fruits_may17 = strpos(g07b, "g")
gen low_or_fruits_apr17 = strpos(g07b, "h")
gen low_or_fruits_mar17 = strpos(g07b, "i")
gen low_or_fruits_feb17 = strpos(g07b, "j")
gen low_or_fruits_jan17 = strpos(g07b, "k")
gen low_or_fruits_dec16 = strpos(g07b, "l")

replace low_or_fruits_nov17 = 1 if low_or_fruits_nov17 >1
replace low_or_fruits_oct17 = 1 if low_or_fruits_oct17 >1
replace low_or_fruits_sep17 = 1 if low_or_fruits_sep17 >1
replace low_or_fruits_aug17 = 1 if low_or_fruits_aug17 >1
replace low_or_fruits_jul17 = 1 if low_or_fruits_jul17 >1
replace low_or_fruits_jun17 = 1 if low_or_fruits_jun17 >1
replace low_or_fruits_may17 = 1 if low_or_fruits_may17 >1
replace low_or_fruits_apr17 = 1 if low_or_fruits_apr17 >1
replace low_or_fruits_mar17 = 1 if low_or_fruits_mar17 >1
replace low_or_fruits_feb17 = 1 if low_or_fruits_feb17 >1
replace low_or_fruits_jan17 = 1 if low_or_fruits_jan17 >1
replace low_or_fruits_dec16 = 1 if low_or_fruits_dec16 >1

la  var  low_or_fruits_nov17 "Low orange fruits 2017Nov"
la  var  low_or_fruits_oct17 "Low orange fruits 2017Oct"
la  var  low_or_fruits_sep17 "Low orange fruits 2017Sept"
la  var  low_or_fruits_aug17 "Low orange fruits 2017Aug"
la  var  low_or_fruits_jul17 "Low orange fruits 2017Jul"
la  var  low_or_fruits_jun17 "Low orange fruits 2017June"
la  var  low_or_fruits_may17 "Low orange fruits 2017May"
la  var  low_or_fruits_apr17 "Low orange fruits 2017Apr"
la  var  low_or_fruits_mar17 "Low orange fruits 2017March"
la  var  low_or_fruits_feb17 "Low orange fruits 2017Feb"
la  var  low_or_fruits_jan17 "Low orange fruits 2017Jan"
la  var  low_or_fruits_dec16 "Low orange fruits 2016Dec"

la values ///
low_or_fruits_nov17 ///
low_or_fruits_oct17 ///
low_or_fruits_sep17 ///
low_or_fruits_aug17 ///
low_or_fruits_jul17 ///
low_or_fruits_jun17 ///
low_or_fruits_may17 ///
low_or_fruits_apr17 ///
low_or_fruits_mar17 ///
low_or_fruits_feb17 ///
low_or_fruits_jan17 ///
low_or_fruits_dec16 ///
yesno
********************************************************************************
gen av_or_fruits_nov17 = strpos(g07c, "a")
gen av_or_fruits_oct17 = strpos(g07c, "b")
gen av_or_fruits_sep17 = strpos(g07c, "c")
gen av_or_fruits_aug17 = strpos(g07c, "d")
gen av_or_fruits_jul17 = strpos(g07c, "e")
gen av_or_fruits_jun17 = strpos(g07c, "f")
gen av_or_fruits_may17 = strpos(g07c, "g")
gen av_or_fruits_apr17 = strpos(g07c, "h")
gen av_or_fruits_mar17 = strpos(g07c, "i")
gen av_or_fruits_feb17 = strpos(g07c, "j")
gen av_or_fruits_jan17 = strpos(g07c, "k")
gen av_or_fruits_dec16 = strpos(g07c, "l")

replace av_or_fruits_nov17 = 1 if av_or_fruits_nov17 >1
replace av_or_fruits_oct17 = 1 if av_or_fruits_oct17 >1
replace av_or_fruits_sep17 = 1 if av_or_fruits_sep17 >1
replace av_or_fruits_aug17 = 1 if av_or_fruits_aug17 >1
replace av_or_fruits_jul17 = 1 if av_or_fruits_jul17 >1
replace av_or_fruits_jun17 = 1 if av_or_fruits_jun17 >1
replace av_or_fruits_may17 = 1 if av_or_fruits_may17 >1
replace av_or_fruits_apr17 = 1 if av_or_fruits_apr17 >1
replace av_or_fruits_mar17 = 1 if av_or_fruits_mar17 >1
replace av_or_fruits_feb17 = 1 if av_or_fruits_feb17 >1
replace av_or_fruits_jan17 = 1 if av_or_fruits_jan17 >1
replace av_or_fruits_dec16 = 1 if av_or_fruits_dec16 >1

la  var  av_or_fruits_nov17 "Av orange fruits 2017Nov"
la  var  av_or_fruits_oct17 "Av orange fruits 2017Oct"
la  var  av_or_fruits_sep17 "Av orange fruits 2017Sept"
la  var  av_or_fruits_aug17 "Av orange fruits 2017Aug"
la  var  av_or_fruits_jul17 "Av orange fruits 2017Jul"
la  var  av_or_fruits_jun17 "Av orange fruits 2017June"
la  var  av_or_fruits_may17 "Av orange fruits 2017May"
la  var  av_or_fruits_apr17 "Av orange fruits 2017Apr"
la  var  av_or_fruits_mar17 "Av orange fruits 2017March"
la  var  av_or_fruits_feb17 "Av orange fruits 2017Feb"
la  var  av_or_fruits_jan17 "Av orange fruits 2017Jan"
la  var  av_or_fruits_dec16 "Av orange fruits 2016Dec"

la values ///
av_or_fruits_nov17 ///
av_or_fruits_oct17 ///
av_or_fruits_sep17 ///
av_or_fruits_aug17 ///
av_or_fruits_jul17 ///
av_or_fruits_jun17 ///
av_or_fruits_may17 ///
av_or_fruits_apr17 ///
av_or_fruits_mar17 ///
av_or_fruits_feb17 ///
av_or_fruits_jan17 ///
av_or_fruits_dec16 ///
yesno
********************************************************************************
gen high_or_fruits_nov17 = strpos(g07d, "a")
gen high_or_fruits_oct17 = strpos(g07d, "b")
gen high_or_fruits_sep17 = strpos(g07d, "c")
gen high_or_fruits_aug17 = strpos(g07d, "d")
gen high_or_fruits_jul17 = strpos(g07d, "e")
gen high_or_fruits_jun17 = strpos(g07d, "f")
gen high_or_fruits_may17 = strpos(g07d, "g")
gen high_or_fruits_apr17 = strpos(g07d, "h")
gen high_or_fruits_mar17 = strpos(g07d, "i")
gen high_or_fruits_feb17 = strpos(g07d, "j")
gen high_or_fruits_jan17 = strpos(g07d, "k")
gen high_or_fruits_dec16 = strpos(g07d, "l")

replace high_or_fruits_nov17 = 1 if high_or_fruits_nov17 >1
replace high_or_fruits_oct17 = 1 if high_or_fruits_oct17 >1
replace high_or_fruits_sep17 = 1 if high_or_fruits_sep17 >1
replace high_or_fruits_aug17 = 1 if high_or_fruits_aug17 >1
replace high_or_fruits_jul17 = 1 if high_or_fruits_jul17 >1
replace high_or_fruits_jun17 = 1 if high_or_fruits_jun17 >1
replace high_or_fruits_may17 = 1 if high_or_fruits_may17 >1
replace high_or_fruits_apr17 = 1 if high_or_fruits_apr17 >1
replace high_or_fruits_mar17 = 1 if high_or_fruits_mar17 >1
replace high_or_fruits_feb17 = 1 if high_or_fruits_feb17 >1
replace high_or_fruits_jan17 = 1 if high_or_fruits_jan17 >1
replace high_or_fruits_dec16 = 1 if high_or_fruits_dec16 >1

la  var  high_or_fruits_nov17 "High orange fruits 2017Nov"
la  var  high_or_fruits_oct17 "High orange fruits 2017Oct"
la  var  high_or_fruits_sep17 "High orange fruits 2017Sept"
la  var  high_or_fruits_aug17 "High orange fruits 2017Aug"
la  var  high_or_fruits_jul17 "High orange fruits 2017Jul"
la  var  high_or_fruits_jun17 "High orange fruits 2017June"
la  var  high_or_fruits_may17 "High orange fruits 2017May"
la  var  high_or_fruits_apr17 "High orange fruits 2017Apr"
la  var  high_or_fruits_mar17 "High orange fruits 2017March"
la  var  high_or_fruits_feb17 "High orange fruits 2017Feb"
la  var  high_or_fruits_jan17 "High orange fruits 2017Jan"
la  var  high_or_fruits_dec16 "High orange fruits 2016Dec"

la values ///
high_or_fruits_nov17 ///
high_or_fruits_oct17 ///
high_or_fruits_sep17 ///
high_or_fruits_aug17 ///
high_or_fruits_jul17 ///
high_or_fruits_jun17 ///
high_or_fruits_may17 ///
high_or_fruits_apr17 ///
high_or_fruits_mar17 ///
high_or_fruits_feb17 ///
high_or_fruits_jan17 ///
high_or_fruits_dec16 ///
yesno
********************************************************************************
gen no_other_fruits_nov17 = strpos(g08a, "a")
gen no_other_fruits_oct17 = strpos(g08a, "b")
gen no_other_fruits_sep17 = strpos(g08a, "c")
gen no_other_fruits_aug17 = strpos(g08a, "d")
gen no_other_fruits_jul17 = strpos(g08a, "e")
gen no_other_fruits_jun17 = strpos(g08a, "f")
gen no_other_fruits_may17 = strpos(g08a, "g")
gen no_other_fruits_apr17 = strpos(g08a, "h")
gen no_other_fruits_mar17 = strpos(g08a, "i")
gen no_other_fruits_feb17 = strpos(g08a, "j")
gen no_other_fruits_jan17 = strpos(g08a, "k")
gen no_other_fruits_dec16 = strpos(g08a, "l")

replace no_other_fruits_nov17 = 1 if no_other_fruits_nov17 >1
replace no_other_fruits_oct17 = 1 if no_other_fruits_oct17 >1
replace no_other_fruits_sep17 = 1 if no_other_fruits_sep17 >1
replace no_other_fruits_aug17 = 1 if no_other_fruits_aug17 >1
replace no_other_fruits_jul17 = 1 if no_other_fruits_jul17 >1
replace no_other_fruits_jun17 = 1 if no_other_fruits_jun17 >1
replace no_other_fruits_may17 = 1 if no_other_fruits_may17 >1
replace no_other_fruits_apr17 = 1 if no_other_fruits_apr17 >1
replace no_other_fruits_mar17 = 1 if no_other_fruits_mar17 >1
replace no_other_fruits_feb17 = 1 if no_other_fruits_feb17 >1
replace no_other_fruits_jan17 = 1 if no_other_fruits_jan17 >1
replace no_other_fruits_dec16 = 1 if no_other_fruits_dec16 >1

la  var  no_other_fruits_nov17 "No other fruits 2017Nov"
la  var  no_other_fruits_oct17 "No other fruits 2017Oct"
la  var  no_other_fruits_sep17 "No other fruits 2017Sept"
la  var  no_other_fruits_aug17 "No other fruits 2017Aug"
la  var  no_other_fruits_jul17 "No other fruits 2017Jul"
la  var  no_other_fruits_jun17 "No other fruits 2017June"
la  var  no_other_fruits_may17 "No other fruits 2017May"
la  var  no_other_fruits_apr17 "No other fruits 2017Apr"
la  var  no_other_fruits_mar17 "No other fruits 2017March"
la  var  no_other_fruits_feb17 "No other fruits 2017Feb"
la  var  no_other_fruits_jan17 "No other fruits 2017Jan"
la  var  no_other_fruits_dec16 "No other fruits 2016Dec"


la values ///
no_other_fruits_nov17 ///
no_other_fruits_oct17 ///
no_other_fruits_sep17 ///
no_other_fruits_aug17 ///
no_other_fruits_jul17 ///
no_other_fruits_jun17 ///
no_other_fruits_may17 ///
no_other_fruits_apr17 ///
no_other_fruits_mar17 ///
no_other_fruits_feb17 ///
no_other_fruits_jan17 ///
no_other_fruits_dec16 ///
yesno
********************************************************************************
gen low_other_fruits_nov17 = strpos(g08b, "a")
gen low_other_fruits_oct17 = strpos(g08b, "b")
gen low_other_fruits_sep17 = strpos(g08b, "c")
gen low_other_fruits_aug17 = strpos(g08b, "d")
gen low_other_fruits_jul17 = strpos(g08b, "e")
gen low_other_fruits_jun17 = strpos(g08b, "f")
gen low_other_fruits_may17 = strpos(g08b, "g")
gen low_other_fruits_apr17 = strpos(g08b, "h")
gen low_other_fruits_mar17 = strpos(g08b, "i")
gen low_other_fruits_feb17 = strpos(g08b, "j")
gen low_other_fruits_jan17 = strpos(g08b, "k")
gen low_other_fruits_dec16 = strpos(g08b, "l")

replace low_other_fruits_nov17 = 1 if low_other_fruits_nov17 >1
replace low_other_fruits_oct17 = 1 if low_other_fruits_oct17 >1
replace low_other_fruits_sep17 = 1 if low_other_fruits_sep17 >1
replace low_other_fruits_aug17 = 1 if low_other_fruits_aug17 >1
replace low_other_fruits_jul17 = 1 if low_other_fruits_jul17 >1
replace low_other_fruits_jun17 = 1 if low_other_fruits_jun17 >1
replace low_other_fruits_may17 = 1 if low_other_fruits_may17 >1
replace low_other_fruits_apr17 = 1 if low_other_fruits_apr17 >1
replace low_other_fruits_mar17 = 1 if low_other_fruits_mar17 >1
replace low_other_fruits_feb17 = 1 if low_other_fruits_feb17 >1
replace low_other_fruits_jan17 = 1 if low_other_fruits_jan17 >1
replace low_other_fruits_dec16 = 1 if low_other_fruits_dec16 >1

la  var  low_other_fruits_nov17 "Low other fruits 2017Nov"
la  var  low_other_fruits_oct17 "Low other fruits 2017Oct"
la  var  low_other_fruits_sep17 "Low other fruits 2017Sept"
la  var  low_other_fruits_aug17 "Low other fruits 2017Aug"
la  var  low_other_fruits_jul17 "Low other fruits 2017Jul"
la  var  low_other_fruits_jun17 "Low other fruits 2017June"
la  var  low_other_fruits_may17 "Low other fruits 2017May"
la  var  low_other_fruits_apr17 "Low other fruits 2017Apr"
la  var  low_other_fruits_mar17 "Low other fruits 2017March"
la  var  low_other_fruits_feb17 "Low other fruits 2017Feb"
la  var  low_other_fruits_jan17 "Low other fruits 2017Jan"
la  var  low_other_fruits_dec16 "Low other fruits 2016Dec"

la values ///
low_other_fruits_nov17 ///
low_other_fruits_oct17 ///
low_other_fruits_sep17 ///
low_other_fruits_aug17 ///
low_other_fruits_jul17 ///
low_other_fruits_jun17 ///
low_other_fruits_may17 ///
low_other_fruits_apr17 ///
low_other_fruits_mar17 ///
low_other_fruits_feb17 ///
low_other_fruits_jan17 ///
low_other_fruits_dec16 ///
yesno
********************************************************************************
gen av_other_fruits_nov17 = strpos(g08c, "a")
gen av_other_fruits_oct17 = strpos(g08c, "b")
gen av_other_fruits_sep17 = strpos(g08c, "c")
gen av_other_fruits_aug17 = strpos(g08c, "d")
gen av_other_fruits_jul17 = strpos(g08c, "e")
gen av_other_fruits_jun17 = strpos(g08c, "f")
gen av_other_fruits_may17 = strpos(g08c, "g")
gen av_other_fruits_apr17 = strpos(g08c, "h")
gen av_other_fruits_mar17 = strpos(g08c, "i")
gen av_other_fruits_feb17 = strpos(g08c, "j")
gen av_other_fruits_jan17 = strpos(g08c, "k")
gen av_other_fruits_dec16 = strpos(g08c, "l")

replace av_other_fruits_nov17 = 1 if av_other_fruits_nov17 >1
replace av_other_fruits_oct17 = 1 if av_other_fruits_oct17 >1
replace av_other_fruits_sep17 = 1 if av_other_fruits_sep17 >1
replace av_other_fruits_aug17 = 1 if av_other_fruits_aug17 >1
replace av_other_fruits_jul17 = 1 if av_other_fruits_jul17 >1
replace av_other_fruits_jun17 = 1 if av_other_fruits_jun17 >1
replace av_other_fruits_may17 = 1 if av_other_fruits_may17 >1
replace av_other_fruits_apr17 = 1 if av_other_fruits_apr17 >1
replace av_other_fruits_mar17 = 1 if av_other_fruits_mar17 >1
replace av_other_fruits_feb17 = 1 if av_other_fruits_feb17 >1
replace av_other_fruits_jan17 = 1 if av_other_fruits_jan17 >1
replace av_other_fruits_dec16 = 1 if av_other_fruits_dec16 >1

la  var  av_other_fruits_nov17 "Av other fruits 2017Nov"
la  var  av_other_fruits_oct17 "Av other fruits 2017Oct"
la  var  av_other_fruits_sep17 "Av other fruits 2017Sept"
la  var  av_other_fruits_aug17 "Av other fruits 2017Aug"
la  var  av_other_fruits_jul17 "Av other fruits 2017Jul"
la  var  av_other_fruits_jun17 "Av other fruits 2017June"
la  var  av_other_fruits_may17 "Av other fruits 2017May"
la  var  av_other_fruits_apr17 "Av other fruits 2017Apr"
la  var  av_other_fruits_mar17 "Av other fruits 2017March"
la  var  av_other_fruits_feb17 "Av other fruits 2017Feb"
la  var  av_other_fruits_jan17 "Av other fruits 2017Jan"
la  var  av_other_fruits_dec16 "Av other fruits 2016Dec"

la values ///
av_other_fruits_nov17 ///
av_other_fruits_oct17 ///
av_other_fruits_sep17 ///
av_other_fruits_aug17 ///
av_other_fruits_jul17 ///
av_other_fruits_jun17 ///
av_other_fruits_may17 ///
av_other_fruits_apr17 ///
av_other_fruits_mar17 ///
av_other_fruits_feb17 ///
av_other_fruits_jan17 ///
av_other_fruits_dec16 ///
yesno
********************************************************************************
gen high_other_fruits_nov17 = strpos(g08d, "a")
gen high_other_fruits_oct17 = strpos(g08d, "b")
gen high_other_fruits_sep17 = strpos(g08d, "c")
gen high_other_fruits_aug17 = strpos(g08d, "d")
gen high_other_fruits_jul17 = strpos(g08d, "e")
gen high_other_fruits_jun17 = strpos(g08d, "f")
gen high_other_fruits_may17 = strpos(g08d, "g")
gen high_other_fruits_apr17 = strpos(g08d, "h")
gen high_other_fruits_mar17 = strpos(g08d, "i")
gen high_other_fruits_feb17 = strpos(g08d, "j")
gen high_other_fruits_jan17 = strpos(g08d, "k")
gen high_other_fruits_dec16 = strpos(g08d, "l")

replace high_other_fruits_nov17 = 1 if high_other_fruits_nov17 >1
replace high_other_fruits_oct17 = 1 if high_other_fruits_oct17 >1
replace high_other_fruits_sep17 = 1 if high_other_fruits_sep17 >1
replace high_other_fruits_aug17 = 1 if high_other_fruits_aug17 >1
replace high_other_fruits_jul17 = 1 if high_other_fruits_jul17 >1
replace high_other_fruits_jun17 = 1 if high_other_fruits_jun17 >1
replace high_other_fruits_may17 = 1 if high_other_fruits_may17 >1
replace high_other_fruits_apr17 = 1 if high_other_fruits_apr17 >1
replace high_other_fruits_mar17 = 1 if high_other_fruits_mar17 >1
replace high_other_fruits_feb17 = 1 if high_other_fruits_feb17 >1
replace high_other_fruits_jan17 = 1 if high_other_fruits_jan17 >1
replace high_other_fruits_dec16 = 1 if high_other_fruits_dec16 >1

la  var  high_other_fruits_nov17 "High other fruits 2017Nov"
la  var  high_other_fruits_oct17 "High other fruits 2017Oct"
la  var  high_other_fruits_sep17 "High other fruits 2017Sept"
la  var  high_other_fruits_aug17 "High other fruits 2017Aug"
la  var  high_other_fruits_jul17 "High other fruits 2017Jul"
la  var  high_other_fruits_jun17 "High other fruits 2017June"
la  var  high_other_fruits_may17 "High other fruits 2017May"
la  var  high_other_fruits_apr17 "High other fruits 2017Apr"
la  var  high_other_fruits_mar17 "High other fruits 2017March"
la  var  high_other_fruits_feb17 "High other fruits 2017Feb"
la  var  high_other_fruits_jan17 "High other fruits 2017Jan"
la  var  high_other_fruits_dec16 "High other fruits 2016Dec"

la values ///
high_other_fruits_nov17 ///
high_other_fruits_oct17 ///
high_other_fruits_sep17 ///
high_other_fruits_aug17 ///
high_other_fruits_jul17 ///
high_other_fruits_jun17 ///
high_other_fruits_may17 ///
high_other_fruits_apr17 ///
high_other_fruits_mar17 ///
high_other_fruits_feb17 ///
high_other_fruits_jan17 ///
high_other_fruits_dec16 ///
yesno
********************************************************************************
gen no_meat_nov17 = strpos(g09a, "a")
gen no_meat_oct17 = strpos(g09a, "b")
gen no_meat_sep17 = strpos(g09a, "c")
gen no_meat_aug17 = strpos(g09a, "d")
gen no_meat_jul17 = strpos(g09a, "e")
gen no_meat_jun17 = strpos(g09a, "f")
gen no_meat_may17 = strpos(g09a, "g")
gen no_meat_apr17 = strpos(g09a, "h")
gen no_meat_mar17 = strpos(g09a, "i")
gen no_meat_feb17 = strpos(g09a, "j")
gen no_meat_jan17 = strpos(g09a, "k")
gen no_meat_dec16 = strpos(g09a, "l")

replace no_meat_nov17 = 1 if no_meat_nov17 >1
replace no_meat_oct17 = 1 if no_meat_oct17 >1
replace no_meat_sep17 = 1 if no_meat_sep17 >1
replace no_meat_aug17 = 1 if no_meat_aug17 >1
replace no_meat_jul17 = 1 if no_meat_jul17 >1
replace no_meat_jun17 = 1 if no_meat_jun17 >1
replace no_meat_may17 = 1 if no_meat_may17 >1
replace no_meat_apr17 = 1 if no_meat_apr17 >1
replace no_meat_mar17 = 1 if no_meat_mar17 >1
replace no_meat_feb17 = 1 if no_meat_feb17 >1
replace no_meat_jan17 = 1 if no_meat_jan17 >1
replace no_meat_dec16 = 1 if no_meat_dec16 >1

la  var  no_meat_nov17 "No Meat 2017Nov"
la  var  no_meat_oct17 "No Meat 2017Oct"
la  var  no_meat_sep17 "No Meat 2017Sept"
la  var  no_meat_aug17 "No Meat 2017Aug"
la  var  no_meat_jul17 "No Meat 2017Jul"
la  var  no_meat_jun17 "No Meat 2017June"
la  var  no_meat_may17 "No Meat 2017May"
la  var  no_meat_apr17 "No Meat 2017Apr"
la  var  no_meat_mar17 "No Meat 2017March"
la  var  no_meat_feb17 "No Meat 2017Feb"
la  var  no_meat_jan17 "No Meat 2017Jan"
la  var  no_meat_dec16 "No Meat 2016Dec"

la values ///
no_meat_nov17 ///
no_meat_oct17 ///
no_meat_sep17 ///
no_meat_aug17 ///
no_meat_jul17 ///
no_meat_jun17 ///
no_meat_may17 ///
no_meat_apr17 ///
no_meat_mar17 ///
no_meat_feb17 ///
no_meat_jan17 ///
no_meat_dec16 ///
yesno
********************************************************************************
gen low_meat_nov17 = strpos(g09b, "a")
gen low_meat_oct17 = strpos(g09b, "b")
gen low_meat_sep17 = strpos(g09b, "c")
gen low_meat_aug17 = strpos(g09b, "d")
gen low_meat_jul17 = strpos(g09b, "e")
gen low_meat_jun17 = strpos(g09b, "f")
gen low_meat_may17 = strpos(g09b, "g")
gen low_meat_apr17 = strpos(g09b, "h")
gen low_meat_mar17 = strpos(g09b, "i")
gen low_meat_feb17 = strpos(g09b, "j")
gen low_meat_jan17 = strpos(g09b, "k")
gen low_meat_dec16 = strpos(g09b, "l")

replace low_meat_nov17 = 1 if low_meat_nov17 >1
replace low_meat_oct17 = 1 if low_meat_oct17 >1
replace low_meat_sep17 = 1 if low_meat_sep17 >1
replace low_meat_aug17 = 1 if low_meat_aug17 >1
replace low_meat_jul17 = 1 if low_meat_jul17 >1
replace low_meat_jun17 = 1 if low_meat_jun17 >1
replace low_meat_may17 = 1 if low_meat_may17 >1
replace low_meat_apr17 = 1 if low_meat_apr17 >1
replace low_meat_mar17 = 1 if low_meat_mar17 >1
replace low_meat_feb17 = 1 if low_meat_feb17 >1
replace low_meat_jan17 = 1 if low_meat_jan17 >1
replace low_meat_dec16 = 1 if low_meat_dec16 >1

la  var  low_meat_nov17 "Low Meat 2017Nov"
la  var  low_meat_oct17 "Low Meat 2017Oct"
la  var  low_meat_sep17 "Low Meat 2017Sept"
la  var  low_meat_aug17 "Low Meat 2017Aug"
la  var  low_meat_jul17 "Low Meat 2017Jul"
la  var  low_meat_jun17 "Low Meat 2017June"
la  var  low_meat_may17 "Low Meat 2017May"
la  var  low_meat_apr17 "Low Meat 2017Apr"
la  var  low_meat_mar17 "Low Meat 2017March"
la  var  low_meat_feb17 "Low Meat 2017Feb"
la  var  low_meat_jan17 "Low Meat 2017Jan"
la  var  low_meat_dec16 "Low Meat 2016Dec"

la values ///
low_meat_nov17 ///
low_meat_oct17 ///
low_meat_sep17 ///
low_meat_aug17 ///
low_meat_jul17 ///
low_meat_jun17 ///
low_meat_may17 ///
low_meat_apr17 ///
low_meat_mar17 ///
low_meat_feb17 ///
low_meat_jan17 ///
low_meat_dec16 ///
yesno
********************************************************************************
gen av_meat_nov17 = strpos(g09c, "a")
gen av_meat_oct17 = strpos(g09c, "b")
gen av_meat_sep17 = strpos(g09c, "c")
gen av_meat_aug17 = strpos(g09c, "d")
gen av_meat_jul17 = strpos(g09c, "e")
gen av_meat_jun17 = strpos(g09c, "f")
gen av_meat_may17 = strpos(g09c, "g")
gen av_meat_apr17 = strpos(g09c, "h")
gen av_meat_mar17 = strpos(g09c, "i")
gen av_meat_feb17 = strpos(g09c, "j")
gen av_meat_jan17 = strpos(g09c, "k")
gen av_meat_dec16 = strpos(g09c, "l")

replace av_meat_nov17 = 1 if av_meat_nov17 >1
replace av_meat_oct17 = 1 if av_meat_oct17 >1
replace av_meat_sep17 = 1 if av_meat_sep17 >1
replace av_meat_aug17 = 1 if av_meat_aug17 >1
replace av_meat_jul17 = 1 if av_meat_jul17 >1
replace av_meat_jun17 = 1 if av_meat_jun17 >1
replace av_meat_may17 = 1 if av_meat_may17 >1
replace av_meat_apr17 = 1 if av_meat_apr17 >1
replace av_meat_mar17 = 1 if av_meat_mar17 >1
replace av_meat_feb17 = 1 if av_meat_feb17 >1
replace av_meat_jan17 = 1 if av_meat_jan17 >1
replace av_meat_dec16 = 1 if av_meat_dec16 >1

la  var  av_meat_nov17 "Average Meat 2017Nov"
la  var  av_meat_oct17 "Average Meat 2017Oct"
la  var  av_meat_sep17 "Average Meat 2017Sept"
la  var  av_meat_aug17 "Average Meat 2017Aug"
la  var  av_meat_jul17 "Average Meat 2017Jul"
la  var  av_meat_jun17 "Average Meat 2017June"
la  var  av_meat_may17 "Average Meat 2017May"
la  var  av_meat_apr17 "Average Meat 2017Apr"
la  var  av_meat_mar17 "Average Meat 2017March"
la  var  av_meat_feb17 "Average Meat 2017Feb"
la  var  av_meat_jan17 "Average Meat 2017Jan"
la  var  av_meat_dec16 "Average Meat 2016Dec"

la values ///
av_meat_nov17 ///
av_meat_oct17 ///
av_meat_sep17 ///
av_meat_aug17 ///
av_meat_jul17 ///
av_meat_jun17 ///
av_meat_may17 ///
av_meat_apr17 ///
av_meat_mar17 ///
av_meat_feb17 ///
av_meat_jan17 ///
av_meat_dec16 ///
yesno
********************************************************************************
gen high_meat_nov17 = strpos(g09d, "a")
gen high_meat_oct17 = strpos(g09d, "b")
gen high_meat_sep17 = strpos(g09d, "c")
gen high_meat_aug17 = strpos(g09d, "d")
gen high_meat_jul17 = strpos(g09d, "e")
gen high_meat_jun17 = strpos(g09d, "f")
gen high_meat_may17 = strpos(g09d, "g")
gen high_meat_apr17 = strpos(g09d, "h")
gen high_meat_mar17 = strpos(g09d, "i")
gen high_meat_feb17 = strpos(g09d, "j")
gen high_meat_jan17 = strpos(g09d, "k")
gen high_meat_dec16 = strpos(g09d, "l")

replace high_meat_nov17 = 1 if high_meat_nov17 >1
replace high_meat_oct17 = 1 if high_meat_oct17 >1
replace high_meat_sep17 = 1 if high_meat_sep17 >1
replace high_meat_aug17 = 1 if high_meat_aug17 >1
replace high_meat_jul17 = 1 if high_meat_jul17 >1
replace high_meat_jun17 = 1 if high_meat_jun17 >1
replace high_meat_may17 = 1 if high_meat_may17 >1
replace high_meat_apr17 = 1 if high_meat_apr17 >1
replace high_meat_mar17 = 1 if high_meat_mar17 >1
replace high_meat_feb17 = 1 if high_meat_feb17 >1
replace high_meat_jan17 = 1 if high_meat_jan17 >1
replace high_meat_dec16 = 1 if high_meat_dec16 >1

la  var  high_meat_nov17 "Average Meat 2017Nov"
la  var  high_meat_oct17 "Average Meat 2017Oct"
la  var  high_meat_sep17 "Average Meat 2017Sept"
la  var  high_meat_aug17 "Average Meat 2017Aug"
la  var  high_meat_jul17 "Average Meat 2017Jul"
la  var  high_meat_jun17 "Average Meat 2017June"
la  var  high_meat_may17 "Average Meat 2017May"
la  var  high_meat_apr17 "Average Meat 2017Apr"
la  var  high_meat_mar17 "Average Meat 2017March"
la  var  high_meat_feb17 "Average Meat 2017Feb"
la  var  high_meat_jan17 "Average Meat 2017Jan"
la  var  high_meat_dec16 "Average Meat 2016Dec"

la values  ///
high_meat_nov17 ///
high_meat_oct17 ///
high_meat_sep17 ///
high_meat_aug17 ///
high_meat_jul17 ///
high_meat_jun17 ///
high_meat_may17 ///
high_meat_apr17 ///
high_meat_mar17 ///
high_meat_feb17 ///
high_meat_jan17 ///
high_meat_dec16 ///
yesno
********************************************************************************
gen no_inter_organs_nov17 = strpos(g10a, "a")
gen no_inter_organs_oct17 = strpos(g10a, "b")
gen no_inter_organs_sep17 = strpos(g10a, "c")
gen no_inter_organs_aug17 = strpos(g10a, "d")
gen no_inter_organs_jul17 = strpos(g10a, "e")
gen no_inter_organs_jun17 = strpos(g10a, "f")
gen no_inter_organs_may17 = strpos(g10a, "g")
gen no_inter_organs_apr17 = strpos(g10a, "h")
gen no_inter_organs_mar17 = strpos(g10a, "i")
gen no_inter_organs_feb17 = strpos(g10a, "j")
gen no_inter_organs_jan17 = strpos(g10a, "k")
gen no_inter_organs_dec16 = strpos(g10a, "l")

replace no_inter_organs_nov17 = 1 if no_inter_organs_nov17 >1
replace no_inter_organs_oct17 = 1 if no_inter_organs_oct17 >1
replace no_inter_organs_sep17 = 1 if no_inter_organs_sep17 >1
replace no_inter_organs_aug17 = 1 if no_inter_organs_aug17 >1
replace no_inter_organs_jul17 = 1 if no_inter_organs_jul17 >1
replace no_inter_organs_jun17 = 1 if no_inter_organs_jun17 >1
replace no_inter_organs_may17 = 1 if no_inter_organs_may17 >1
replace no_inter_organs_apr17 = 1 if no_inter_organs_apr17 >1
replace no_inter_organs_mar17 = 1 if no_inter_organs_mar17 >1
replace no_inter_organs_feb17 = 1 if no_inter_organs_feb17 >1
replace no_inter_organs_jan17 = 1 if no_inter_organs_jan17 >1
replace no_inter_organs_dec16 = 1 if no_inter_organs_dec16 >1

la  var  no_inter_organs_nov17 "No Internal Organs 2017Nov"
la  var  no_inter_organs_oct17 "No Internal Organs 2017Oct"
la  var  no_inter_organs_sep17 "No Internal Organs 2017Sept"
la  var  no_inter_organs_aug17 "No Internal Organs 2017Aug"
la  var  no_inter_organs_jul17 "No Internal Organs 2017Jul"
la  var  no_inter_organs_jun17 "No Internal Organs 2017June"
la  var  no_inter_organs_may17 "No Internal Organs 2017May"
la  var  no_inter_organs_apr17 "No Internal Organs 2017Apr"
la  var  no_inter_organs_mar17 "No Internal Organs 2017March"
la  var  no_inter_organs_feb17 "No Internal Organs 2017Feb"
la  var  no_inter_organs_jan17 "No Internal Organs 2017Jan"
la  var  no_inter_organs_dec16 "No Internal Organs 2016Dec"

la values ///
no_inter_organs_nov17 ///
no_inter_organs_oct17 ///
no_inter_organs_sep17 ///
no_inter_organs_aug17 ///
no_inter_organs_jul17 ///
no_inter_organs_jun17 ///
no_inter_organs_may17 ///
no_inter_organs_apr17 ///
no_inter_organs_mar17 ///
no_inter_organs_feb17 ///
no_inter_organs_jan17 ///
no_inter_organs_dec16 ///
yesno
********************************************************************************
gen low_inter_organs_nov17 = strpos(g10b, "a")
gen low_inter_organs_oct17 = strpos(g10b, "b")
gen low_inter_organs_sep17 = strpos(g10b, "c")
gen low_inter_organs_aug17 = strpos(g10b, "d")
gen low_inter_organs_jul17 = strpos(g10b, "e")
gen low_inter_organs_jun17 = strpos(g10b, "f")
gen low_inter_organs_may17 = strpos(g10b, "g")
gen low_inter_organs_apr17 = strpos(g10b, "h")
gen low_inter_organs_mar17 = strpos(g10b, "i")
gen low_inter_organs_feb17 = strpos(g10b, "j")
gen low_inter_organs_jan17 = strpos(g10b, "k")
gen low_inter_organs_dec16 = strpos(g10b, "l")

replace low_inter_organs_nov17 = 1 if low_inter_organs_nov17 >1
replace low_inter_organs_oct17 = 1 if low_inter_organs_oct17 >1
replace low_inter_organs_sep17 = 1 if low_inter_organs_sep17 >1
replace low_inter_organs_aug17 = 1 if low_inter_organs_aug17 >1
replace low_inter_organs_jul17 = 1 if low_inter_organs_jul17 >1
replace low_inter_organs_jun17 = 1 if low_inter_organs_jun17 >1
replace low_inter_organs_may17 = 1 if low_inter_organs_may17 >1
replace low_inter_organs_apr17 = 1 if low_inter_organs_apr17 >1
replace low_inter_organs_mar17 = 1 if low_inter_organs_mar17 >1
replace low_inter_organs_feb17 = 1 if low_inter_organs_feb17 >1
replace low_inter_organs_jan17 = 1 if low_inter_organs_jan17 >1
replace low_inter_organs_dec16 = 1 if low_inter_organs_dec16 >1

la  var  low_inter_organs_nov17 "No Internal Organs 2017Nov"
la  var  low_inter_organs_oct17 "No Internal Organs 2017Oct"
la  var  low_inter_organs_sep17 "No Internal Organs 2017Sept"
la  var  low_inter_organs_aug17 "No Internal Organs 2017Aug"
la  var  low_inter_organs_jul17 "No Internal Organs 2017Jul"
la  var  low_inter_organs_jun17 "No Internal Organs 2017June"
la  var  low_inter_organs_may17 "No Internal Organs 2017May"
la  var  low_inter_organs_apr17 "No Internal Organs 2017Apr"
la  var  low_inter_organs_mar17 "No Internal Organs 2017March"
la  var  low_inter_organs_feb17 "No Internal Organs 2017Feb"
la  var  low_inter_organs_jan17 "No Internal Organs 2017Jan"
la  var  low_inter_organs_dec16 "No Internal Organs 2016Dec"

la values ///
low_inter_organs_nov17 ///
low_inter_organs_oct17 ///
low_inter_organs_sep17 ///
low_inter_organs_aug17 ///
low_inter_organs_jul17 ///
low_inter_organs_jun17 ///
low_inter_organs_may17 ///
low_inter_organs_apr17 ///
low_inter_organs_mar17 ///
low_inter_organs_feb17 ///
low_inter_organs_jan17 ///
low_inter_organs_dec16 ///
yesno
********************************************************************************
gen av_inter_organs_nov17 = strpos(g10c, "a")
gen av_inter_organs_oct17 = strpos(g10c, "b")
gen av_inter_organs_sep17 = strpos(g10c, "c")
gen av_inter_organs_aug17 = strpos(g10c, "d")
gen av_inter_organs_jul17 = strpos(g10c, "e")
gen av_inter_organs_jun17 = strpos(g10c, "f")
gen av_inter_organs_may17 = strpos(g10c, "g")
gen av_inter_organs_apr17 = strpos(g10c, "h")
gen av_inter_organs_mar17 = strpos(g10c, "i")
gen av_inter_organs_feb17 = strpos(g10c, "j")
gen av_inter_organs_jan17 = strpos(g10c, "k")
gen av_inter_organs_dec16 = strpos(g10c, "l")

replace av_inter_organs_nov17 = 1 if av_inter_organs_nov17 >1
replace av_inter_organs_oct17 = 1 if av_inter_organs_oct17 >1
replace av_inter_organs_sep17 = 1 if av_inter_organs_sep17 >1
replace av_inter_organs_aug17 = 1 if av_inter_organs_aug17 >1
replace av_inter_organs_jul17 = 1 if av_inter_organs_jul17 >1
replace av_inter_organs_jun17 = 1 if av_inter_organs_jun17 >1
replace av_inter_organs_may17 = 1 if av_inter_organs_may17 >1
replace av_inter_organs_apr17 = 1 if av_inter_organs_apr17 >1
replace av_inter_organs_mar17 = 1 if av_inter_organs_mar17 >1
replace av_inter_organs_feb17 = 1 if av_inter_organs_feb17 >1
replace av_inter_organs_jan17 = 1 if av_inter_organs_jan17 >1
replace av_inter_organs_dec16 = 1 if av_inter_organs_dec16 >1

la  var  av_inter_organs_nov17 "Av Internal Organs 2017Nov"
la  var  av_inter_organs_oct17 "Av Internal Organs 2017Oct"
la  var  av_inter_organs_sep17 "Av Internal Organs 2017Sept"
la  var  av_inter_organs_aug17 "Av Internal Organs 2017Aug"
la  var  av_inter_organs_jul17 "Av Internal Organs 2017Jul"
la  var  av_inter_organs_jun17 "Av Internal Organs 2017June"
la  var  av_inter_organs_may17 "Av Internal Organs 2017May"
la  var  av_inter_organs_apr17 "Av Internal Organs 2017Apr"
la  var  av_inter_organs_mar17 "Av Internal Organs 2017March"
la  var  av_inter_organs_feb17 "Av Internal Organs 2017Feb"
la  var  av_inter_organs_jan17 "Av Internal Organs 2017Jan"
la  var  av_inter_organs_dec16 "Av Internal Organs 2016Dec"

la values ///
av_inter_organs_nov17 ///
av_inter_organs_oct17 ///
av_inter_organs_sep17 ///
av_inter_organs_aug17 ///
av_inter_organs_jul17 ///
av_inter_organs_jun17 ///
av_inter_organs_may17 ///
av_inter_organs_apr17 ///
av_inter_organs_mar17 ///
av_inter_organs_feb17 ///
av_inter_organs_jan17 ///
av_inter_organs_dec16 ///
yesno
********************************************************************************
gen high_inter_organs_nov17 = strpos(g10d, "a")
gen high_inter_organs_oct17 = strpos(g10d, "b")
gen high_inter_organs_sep17 = strpos(g10d, "c")
gen high_inter_organs_aug17 = strpos(g10d, "d")
gen high_inter_organs_jul17 = strpos(g10d, "e")
gen high_inter_organs_jun17 = strpos(g10d, "f")
gen high_inter_organs_may17 = strpos(g10d, "g")
gen high_inter_organs_apr17 = strpos(g10d, "h")
gen high_inter_organs_mar17 = strpos(g10d, "i")
gen high_inter_organs_feb17 = strpos(g10d, "j")
gen high_inter_organs_jan17 = strpos(g10d, "k")
gen high_inter_organs_dec16 = strpos(g10d, "l")

replace high_inter_organs_nov17 = 1 if high_inter_organs_nov17 >1
replace high_inter_organs_oct17 = 1 if high_inter_organs_oct17 >1
replace high_inter_organs_sep17 = 1 if high_inter_organs_sep17 >1
replace high_inter_organs_aug17 = 1 if high_inter_organs_aug17 >1
replace high_inter_organs_jul17 = 1 if high_inter_organs_jul17 >1
replace high_inter_organs_jun17 = 1 if high_inter_organs_jun17 >1
replace high_inter_organs_may17 = 1 if high_inter_organs_may17 >1
replace high_inter_organs_apr17 = 1 if high_inter_organs_apr17 >1
replace high_inter_organs_mar17 = 1 if high_inter_organs_mar17 >1
replace high_inter_organs_feb17 = 1 if high_inter_organs_feb17 >1
replace high_inter_organs_jan17 = 1 if high_inter_organs_jan17 >1
replace high_inter_organs_dec16 = 1 if high_inter_organs_dec16 >1

la  var  high_inter_organs_nov17 "High Internal Organs 2017Nov"
la  var  high_inter_organs_oct17 "High Internal Organs 2017Oct"
la  var  high_inter_organs_sep17 "High Internal Organs 2017Sept"
la  var  high_inter_organs_aug17 "High Internal Organs 2017Aug"
la  var  high_inter_organs_jul17 "High Internal Organs 2017Jul"
la  var  high_inter_organs_jun17 "High Internal Organs 2017June"
la  var  high_inter_organs_may17 "High Internal Organs 2017May"
la  var  high_inter_organs_apr17 "High Internal Organs 2017Apr"
la  var  high_inter_organs_mar17 "High Internal Organs 2017March"
la  var  high_inter_organs_feb17 "High Internal Organs 2017Feb"
la  var  high_inter_organs_jan17 "High Internal Organs 2017Jan"
la  var  high_inter_organs_dec16 "High Internal Organs 2016Dec"

la values ///
high_inter_organs_nov17 ///
high_inter_organs_oct17 ///
high_inter_organs_sep17 ///
high_inter_organs_aug17 ///
high_inter_organs_jul17 ///
high_inter_organs_jun17 ///
high_inter_organs_may17 ///
high_inter_organs_apr17 ///
high_inter_organs_mar17 ///
high_inter_organs_feb17 ///
high_inter_organs_jan17 ///
high_inter_organs_dec16 ///
yesno
********************************************************************************
gen no_fish_nov17 = strpos(g11a, "a")
gen no_fish_oct17 = strpos(g11a, "b")
gen no_fish_sep17 = strpos(g11a, "c")
gen no_fish_aug17 = strpos(g11a, "d")
gen no_fish_jul17 = strpos(g11a, "e")
gen no_fish_jun17 = strpos(g11a, "f")
gen no_fish_may17 = strpos(g11a, "g")
gen no_fish_apr17 = strpos(g11a, "h")
gen no_fish_mar17 = strpos(g11a, "i")
gen no_fish_feb17 = strpos(g11a, "j")
gen no_fish_jan17 = strpos(g11a, "k")
gen no_fish_dec16 = strpos(g11a, "l")

replace no_fish_nov17 = 1 if no_fish_nov17 >1
replace no_fish_oct17 = 1 if no_fish_oct17 >1
replace no_fish_sep17 = 1 if no_fish_sep17 >1
replace no_fish_aug17 = 1 if no_fish_aug17 >1
replace no_fish_jul17 = 1 if no_fish_jul17 >1
replace no_fish_jun17 = 1 if no_fish_jun17 >1
replace no_fish_may17 = 1 if no_fish_may17 >1
replace no_fish_apr17 = 1 if no_fish_apr17 >1
replace no_fish_mar17 = 1 if no_fish_mar17 >1
replace no_fish_feb17 = 1 if no_fish_feb17 >1
replace no_fish_jan17 = 1 if no_fish_jan17 >1
replace no_fish_dec16 = 1 if no_fish_dec16 >1

la  var  no_fish_nov17 "No Fish 2017Nov"
la  var  no_fish_oct17 "No Fish 2017Oct"
la  var  no_fish_sep17 "No Fish 2017Sept"
la  var  no_fish_aug17 "No Fish 2017Aug"
la  var  no_fish_jul17 "No Fish 2017Jul"
la  var  no_fish_jun17 "No Fish 2017June"
la  var  no_fish_may17 "No Fish 2017May"
la  var  no_fish_apr17 "No Fish 2017Apr"
la  var  no_fish_mar17 "No Fish 2017March"
la  var  no_fish_feb17 "No Fish 2017Feb"
la  var  no_fish_jan17 "No Fish 2017Jan"
la  var  no_fish_dec16 "No Fish 2016Dec"

la values ///
no_fish_nov17 ///
no_fish_oct17 ///
no_fish_sep17 ///
no_fish_aug17 ///
no_fish_jul17 ///
no_fish_jun17 ///
no_fish_may17 ///
no_fish_apr17 ///
no_fish_mar17 ///
no_fish_feb17 ///
no_fish_jan17 ///
no_fish_dec16 ///
yesno
********************************************************************************
gen low_fish_nov17 = strpos(g11b, "a")
gen low_fish_oct17 = strpos(g11b, "b")
gen low_fish_sep17 = strpos(g11b, "c")
gen low_fish_aug17 = strpos(g11b, "d")
gen low_fish_jul17 = strpos(g11b, "e")
gen low_fish_jun17 = strpos(g11b, "f")
gen low_fish_may17 = strpos(g11b, "g")
gen low_fish_apr17 = strpos(g11b, "h")
gen low_fish_mar17 = strpos(g11b, "i")
gen low_fish_feb17 = strpos(g11b, "j")
gen low_fish_jan17 = strpos(g11b, "k")
gen low_fish_dec16 = strpos(g11b, "l")

replace low_fish_nov17 = 1 if low_fish_nov17 >1
replace low_fish_oct17 = 1 if low_fish_oct17 >1
replace low_fish_sep17 = 1 if low_fish_sep17 >1
replace low_fish_aug17 = 1 if low_fish_aug17 >1
replace low_fish_jul17 = 1 if low_fish_jul17 >1
replace low_fish_jun17 = 1 if low_fish_jun17 >1
replace low_fish_may17 = 1 if low_fish_may17 >1
replace low_fish_apr17 = 1 if low_fish_apr17 >1
replace low_fish_mar17 = 1 if low_fish_mar17 >1
replace low_fish_feb17 = 1 if low_fish_feb17 >1
replace low_fish_jan17 = 1 if low_fish_jan17 >1
replace low_fish_dec16 = 1 if low_fish_dec16 >1

la  var  low_fish_nov17 "Low Fish 2017Nov"
la  var  low_fish_oct17 "Low Fish 2017Oct"
la  var  low_fish_sep17 "Low Fish 2017Sept"
la  var  low_fish_aug17 "Low Fish 2017Aug"
la  var  low_fish_jul17 "Low Fish 2017Jul"
la  var  low_fish_jun17 "Low Fish 2017June"
la  var  low_fish_may17 "Low Fish 2017May"
la  var  low_fish_apr17 "Low Fish 2017Apr"
la  var  low_fish_mar17 "Low Fish 2017March"
la  var  low_fish_feb17 "Low Fish 2017Feb"
la  var  low_fish_jan17 "Low Fish 2017Jan"
la  var  low_fish_dec16 "Low Fish 2016Dec"

la values ///
low_fish_nov17 ///
low_fish_oct17 ///
low_fish_sep17 ///
low_fish_aug17 ///
low_fish_jul17 ///
low_fish_jun17 ///
low_fish_may17 ///
low_fish_apr17 ///
low_fish_mar17 ///
low_fish_feb17 ///
low_fish_jan17 ///
low_fish_dec16 ///
yesno
********************************************************************************
gen av_fish_nov17 = strpos(g11c, "a")
gen av_fish_oct17 = strpos(g11c, "b")
gen av_fish_sep17 = strpos(g11c, "c")
gen av_fish_aug17 = strpos(g11c, "d")
gen av_fish_jul17 = strpos(g11c, "e")
gen av_fish_jun17 = strpos(g11c, "f")
gen av_fish_may17 = strpos(g11c, "g")
gen av_fish_apr17 = strpos(g11c, "h")
gen av_fish_mar17 = strpos(g11c, "i")
gen av_fish_feb17 = strpos(g11c, "j")
gen av_fish_jan17 = strpos(g11c, "k")
gen av_fish_dec16 = strpos(g11c, "l")

replace av_fish_nov17 = 1 if av_fish_nov17 >1
replace av_fish_oct17 = 1 if av_fish_oct17 >1
replace av_fish_sep17 = 1 if av_fish_sep17 >1
replace av_fish_aug17 = 1 if av_fish_aug17 >1
replace av_fish_jul17 = 1 if av_fish_jul17 >1
replace av_fish_jun17 = 1 if av_fish_jun17 >1
replace av_fish_may17 = 1 if av_fish_may17 >1
replace av_fish_apr17 = 1 if av_fish_apr17 >1
replace av_fish_mar17 = 1 if av_fish_mar17 >1
replace av_fish_feb17 = 1 if av_fish_feb17 >1
replace av_fish_jan17 = 1 if av_fish_jan17 >1
replace av_fish_dec16 = 1 if av_fish_dec16 >1

la  var  av_fish_nov17 "Average Fish 2017Nov"
la  var  av_fish_oct17 "Average Fish 2017Oct"
la  var  av_fish_sep17 "Average Fish 2017Sept"
la  var  av_fish_aug17 "Average Fish 2017Aug"
la  var  av_fish_jul17 "Average Fish 2017Jul"
la  var  av_fish_jun17 "Average Fish 2017June"
la  var  av_fish_may17 "Average Fish 2017May"
la  var  av_fish_apr17 "Average Fish 2017Apr"
la  var  av_fish_mar17 "Average Fish 2017March"
la  var  av_fish_feb17 "Average Fish 2017Feb"
la  var  av_fish_jan17 "Average Fish 2017Jan"
la  var  av_fish_dec16 "Average Fish 2016Dec"

la values ///
av_fish_nov17 ///
av_fish_oct17 ///
av_fish_sep17 ///
av_fish_aug17 ///
av_fish_jul17 ///
av_fish_jun17 ///
av_fish_may17 ///
av_fish_apr17 ///
av_fish_mar17 ///
av_fish_feb17 ///
av_fish_jan17 ///
av_fish_dec16 ///
yesno
********************************************************************************
gen high_fish_nov17 = strpos(g11d, "a")
gen high_fish_oct17 = strpos(g11d, "b")
gen high_fish_sep17 = strpos(g11d, "c")
gen high_fish_aug17 = strpos(g11d, "d")
gen high_fish_jul17 = strpos(g11d, "e")
gen high_fish_jun17 = strpos(g11d, "f")
gen high_fish_may17 = strpos(g11d, "g")
gen high_fish_apr17 = strpos(g11d, "h")
gen high_fish_mar17 = strpos(g11d, "i")
gen high_fish_feb17 = strpos(g11d, "j")
gen high_fish_jan17 = strpos(g11d, "k")
gen high_fish_dec16 = strpos(g11d, "l")

replace high_fish_nov17 = 1 if high_fish_nov17 >1
replace high_fish_oct17 = 1 if high_fish_oct17 >1
replace high_fish_sep17 = 1 if high_fish_sep17 >1
replace high_fish_aug17 = 1 if high_fish_aug17 >1
replace high_fish_jul17 = 1 if high_fish_jul17 >1
replace high_fish_jun17 = 1 if high_fish_jun17 >1
replace high_fish_may17 = 1 if high_fish_may17 >1
replace high_fish_apr17 = 1 if high_fish_apr17 >1
replace high_fish_mar17 = 1 if high_fish_mar17 >1
replace high_fish_feb17 = 1 if high_fish_feb17 >1
replace high_fish_jan17 = 1 if high_fish_jan17 >1
replace high_fish_dec16 = 1 if high_fish_dec16 >1

la  var  high_fish_nov17 "High Fish 2017Nov"
la  var  high_fish_oct17 "High Fish 2017Oct"
la  var  high_fish_sep17 "High Fish 2017Sept"
la  var  high_fish_aug17 "High Fish 2017Aug"
la  var  high_fish_jul17 "High Fish 2017Jul"
la  var  high_fish_jun17 "High Fish 2017June"
la  var  high_fish_may17 "High Fish 2017May"
la  var  high_fish_apr17 "High Fish 2017Apr"
la  var  high_fish_mar17 "High Fish 2017March"
la  var  high_fish_feb17 "High Fish 2017Feb"
la  var  high_fish_jan17 "High Fish 2017Jan"
la  var  high_fish_dec16 "High Fish 2016Dec"

la values ///
high_fish_nov17 ///
high_fish_oct17 ///
high_fish_sep17 ///
high_fish_aug17 ///
high_fish_jul17 ///
high_fish_jun17 ///
high_fish_may17 ///
high_fish_apr17 ///
high_fish_mar17 ///
high_fish_feb17 ///
high_fish_jan17 ///
high_fish_dec16 ///
yesno
********************************************************************************
gen no_eggs_nov17 = strpos(g12a, "a")
gen no_eggs_oct17 = strpos(g12a, "b")
gen no_eggs_sep17 = strpos(g12a, "c")
gen no_eggs_aug17 = strpos(g12a, "d")
gen no_eggs_jul17 = strpos(g12a, "e")
gen no_eggs_jun17 = strpos(g12a, "f")
gen no_eggs_may17 = strpos(g12a, "g")
gen no_eggs_apr17 = strpos(g12a, "h")
gen no_eggs_mar17 = strpos(g12a, "i")
gen no_eggs_feb17 = strpos(g12a, "j")
gen no_eggs_jan17 = strpos(g12a, "k")
gen no_eggs_dec16 = strpos(g12a, "l")

replace no_eggs_nov17 = 1 if no_eggs_nov17 >1
replace no_eggs_oct17 = 1 if no_eggs_oct17 >1
replace no_eggs_sep17 = 1 if no_eggs_sep17 >1
replace no_eggs_aug17 = 1 if no_eggs_aug17 >1
replace no_eggs_jul17 = 1 if no_eggs_jul17 >1
replace no_eggs_jun17 = 1 if no_eggs_jun17 >1
replace no_eggs_may17 = 1 if no_eggs_may17 >1
replace no_eggs_apr17 = 1 if no_eggs_apr17 >1
replace no_eggs_mar17 = 1 if no_eggs_mar17 >1
replace no_eggs_feb17 = 1 if no_eggs_feb17 >1
replace no_eggs_jan17 = 1 if no_eggs_jan17 >1
replace no_eggs_dec16 = 1 if no_eggs_dec16 >1

la  var  no_eggs_nov17 "No Eggs 2017Nov"
la  var  no_eggs_oct17 "No Eggs 2017Oct"
la  var  no_eggs_sep17 "No Eggs 2017Sept"
la  var  no_eggs_aug17 "No Eggs 2017Aug"
la  var  no_eggs_jul17 "No Eggs 2017Jul"
la  var  no_eggs_jun17 "No Eggs 2017June"
la  var  no_eggs_may17 "No Eggs 2017May"
la  var  no_eggs_apr17 "No Eggs 2017Apr"
la  var  no_eggs_mar17 "No Eggs 2017March"
la  var  no_eggs_feb17 "No Eggs 2017Feb"
la  var  no_eggs_jan17 "No Eggs 2017Jan"
la  var  no_eggs_dec16 "No Eggs 2016Dec"

la values ///
no_eggs_nov17 ///
no_eggs_oct17 ///
no_eggs_sep17 ///
no_eggs_aug17 ///
no_eggs_jul17 ///
no_eggs_jun17 ///
no_eggs_may17 ///
no_eggs_apr17 ///
no_eggs_mar17 ///
no_eggs_feb17 ///
no_eggs_jan17 ///
no_eggs_dec16 ///
yesno
********************************************************************************
gen low_eggs_nov17 = strpos(g12b, "a")
gen low_eggs_oct17 = strpos(g12b, "b")
gen low_eggs_sep17 = strpos(g12b, "c")
gen low_eggs_aug17 = strpos(g12b, "d")
gen low_eggs_jul17 = strpos(g12b, "e")
gen low_eggs_jun17 = strpos(g12b, "f")
gen low_eggs_may17 = strpos(g12b, "g")
gen low_eggs_apr17 = strpos(g12b, "h")
gen low_eggs_mar17 = strpos(g12b, "i")
gen low_eggs_feb17 = strpos(g12b, "j")
gen low_eggs_jan17 = strpos(g12b, "k")
gen low_eggs_dec16 = strpos(g12b, "l")

replace low_eggs_nov17 = 1 if low_eggs_nov17 >1
replace low_eggs_oct17 = 1 if low_eggs_oct17 >1
replace low_eggs_sep17 = 1 if low_eggs_sep17 >1
replace low_eggs_aug17 = 1 if low_eggs_aug17 >1
replace low_eggs_jul17 = 1 if low_eggs_jul17 >1
replace low_eggs_jun17 = 1 if low_eggs_jun17 >1
replace low_eggs_may17 = 1 if low_eggs_may17 >1
replace low_eggs_apr17 = 1 if low_eggs_apr17 >1
replace low_eggs_mar17 = 1 if low_eggs_mar17 >1
replace low_eggs_feb17 = 1 if low_eggs_feb17 >1
replace low_eggs_jan17 = 1 if low_eggs_jan17 >1
replace low_eggs_dec16 = 1 if low_eggs_dec16 >1

la  var  low_eggs_nov17 "Low Eggs 2017Nov"
la  var  low_eggs_oct17 "Low Eggs 2017Oct"
la  var  low_eggs_sep17 "Low Eggs 2017Sept"
la  var  low_eggs_aug17 "Low Eggs 2017Aug"
la  var  low_eggs_jul17 "Low Eggs 2017Jul"
la  var  low_eggs_jun17 "Low Eggs 2017June"
la  var  low_eggs_may17 "Low Eggs 2017May"
la  var  low_eggs_apr17 "Low Eggs 2017Apr"
la  var  low_eggs_mar17 "Low Eggs 2017March"
la  var  low_eggs_feb17 "Low Eggs 2017Feb"
la  var  low_eggs_jan17 "Low Eggs 2017Jan"
la  var  low_eggs_dec16 "Low Eggs 2016Dec"

la values ///
low_eggs_nov17 ///
low_eggs_oct17 ///
low_eggs_sep17 ///
low_eggs_aug17 ///
low_eggs_jul17 ///
low_eggs_jun17 ///
low_eggs_may17 ///
low_eggs_apr17 ///
low_eggs_mar17 ///
low_eggs_feb17 ///
low_eggs_jan17 ///
low_eggs_dec16 ///
yesno
********************************************************************************
gen av_eggs_nov17 = strpos(g12c, "a")
gen av_eggs_oct17 = strpos(g12c, "b")
gen av_eggs_sep17 = strpos(g12c, "c")
gen av_eggs_aug17 = strpos(g12c, "d")
gen av_eggs_jul17 = strpos(g12c, "e")
gen av_eggs_jun17 = strpos(g12c, "f")
gen av_eggs_may17 = strpos(g12c, "g")
gen av_eggs_apr17 = strpos(g12c, "h")
gen av_eggs_mar17 = strpos(g12c, "i")
gen av_eggs_feb17 = strpos(g12c, "j")
gen av_eggs_jan17 = strpos(g12c, "k")
gen av_eggs_dec16 = strpos(g12c, "l")

replace av_eggs_nov17 = 1 if av_eggs_nov17 >1
replace av_eggs_oct17 = 1 if av_eggs_oct17 >1
replace av_eggs_sep17 = 1 if av_eggs_sep17 >1
replace av_eggs_aug17 = 1 if av_eggs_aug17 >1
replace av_eggs_jul17 = 1 if av_eggs_jul17 >1
replace av_eggs_jun17 = 1 if av_eggs_jun17 >1
replace av_eggs_may17 = 1 if av_eggs_may17 >1
replace av_eggs_apr17 = 1 if av_eggs_apr17 >1
replace av_eggs_mar17 = 1 if av_eggs_mar17 >1
replace av_eggs_feb17 = 1 if av_eggs_feb17 >1
replace av_eggs_jan17 = 1 if av_eggs_jan17 >1
replace av_eggs_dec16 = 1 if av_eggs_dec16 >1

la  var  av_eggs_nov17 "Average Eggs 2017Nov"
la  var  av_eggs_oct17 "Average Eggs 2017Oct"
la  var  av_eggs_sep17 "Average Eggs 2017Sept"
la  var  av_eggs_aug17 "Average Eggs 2017Aug"
la  var  av_eggs_jul17 "Average Eggs 2017Jul"
la  var  av_eggs_jun17 "Average Eggs 2017June"
la  var  av_eggs_may17 "Average Eggs 2017May"
la  var  av_eggs_apr17 "Average Eggs 2017Apr"
la  var  av_eggs_mar17 "Average Eggs 2017March"
la  var  av_eggs_feb17 "Average Eggs 2017Feb"
la  var  av_eggs_jan17 "Average Eggs 2017Jan"
la  var  av_eggs_dec16 "Average Eggs 2016Dec"

la values ///
av_eggs_nov17 ///
av_eggs_oct17 ///
av_eggs_sep17 ///
av_eggs_aug17 ///
av_eggs_jul17 ///
av_eggs_jun17 ///
av_eggs_may17 ///
av_eggs_apr17 ///
av_eggs_mar17 ///
av_eggs_feb17 ///
av_eggs_jan17 ///
av_eggs_dec16 ///
yesno
********************************************************************************
gen high_eggs_nov17 = strpos(g12d, "a")
gen high_eggs_oct17 = strpos(g12d, "b")
gen high_eggs_sep17 = strpos(g12d, "c")
gen high_eggs_aug17 = strpos(g12d, "d")
gen high_eggs_jul17 = strpos(g12d, "e")
gen high_eggs_jun17 = strpos(g12d, "f")
gen high_eggs_may17 = strpos(g12d, "g")
gen high_eggs_apr17 = strpos(g12d, "h")
gen high_eggs_mar17 = strpos(g12d, "i")
gen high_eggs_feb17 = strpos(g12d, "j")
gen high_eggs_jan17 = strpos(g12d, "k")
gen high_eggs_dec16 = strpos(g12d, "l")

replace high_eggs_nov17 = 1 if high_eggs_nov17 >1
replace high_eggs_oct17 = 1 if high_eggs_oct17 >1
replace high_eggs_sep17 = 1 if high_eggs_sep17 >1
replace high_eggs_aug17 = 1 if high_eggs_aug17 >1
replace high_eggs_jul17 = 1 if high_eggs_jul17 >1
replace high_eggs_jun17 = 1 if high_eggs_jun17 >1
replace high_eggs_may17 = 1 if high_eggs_may17 >1
replace high_eggs_apr17 = 1 if high_eggs_apr17 >1
replace high_eggs_mar17 = 1 if high_eggs_mar17 >1
replace high_eggs_feb17 = 1 if high_eggs_feb17 >1
replace high_eggs_jan17 = 1 if high_eggs_jan17 >1
replace high_eggs_dec16 = 1 if high_eggs_dec16 >1

la  var  high_eggs_nov17 "High Eggs 2017Nov"
la  var  high_eggs_oct17 "High Eggs 2017Oct"
la  var  high_eggs_sep17 "High Eggs 2017Sept"
la  var  high_eggs_aug17 "High Eggs 2017Aug"
la  var  high_eggs_jul17 "High Eggs 2017Jul"
la  var  high_eggs_jun17 "High Eggs 2017June"
la  var  high_eggs_may17 "High Eggs 2017May"
la  var  high_eggs_apr17 "High Eggs 2017Apr"
la  var  high_eggs_mar17 "High Eggs 2017March"
la  var  high_eggs_feb17 "High Eggs 2017Feb"
la  var  high_eggs_jan17 "High Eggs 2017Jan"
la  var  high_eggs_dec16 "High Eggs 2016Dec"

la values ///
high_eggs_nov17 ///
high_eggs_oct17 ///
high_eggs_sep17 ///
high_eggs_aug17 ///
high_eggs_jul17 ///
high_eggs_jun17 ///
high_eggs_may17 ///
high_eggs_apr17 ///
high_eggs_mar17 ///
high_eggs_feb17 ///
high_eggs_jan17 ///
high_eggs_dec16 ///
yesno
********************************************************************************
gen no_milk_nov17 = strpos(g13a, "a")
gen no_milk_oct17 = strpos(g13a, "b")
gen no_milk_sep17 = strpos(g13a, "c")
gen no_milk_aug17 = strpos(g13a, "d")
gen no_milk_jul17 = strpos(g13a, "e")
gen no_milk_jun17 = strpos(g13a, "f")
gen no_milk_may17 = strpos(g13a, "g")
gen no_milk_apr17 = strpos(g13a, "h")
gen no_milk_mar17 = strpos(g13a, "i")
gen no_milk_feb17 = strpos(g13a, "j")
gen no_milk_jan17 = strpos(g13a, "k")
gen no_milk_dec16 = strpos(g13a, "l")

replace no_milk_nov17 = 1 if no_milk_nov17 >1
replace no_milk_oct17 = 1 if no_milk_oct17 >1
replace no_milk_sep17 = 1 if no_milk_sep17 >1
replace no_milk_aug17 = 1 if no_milk_aug17 >1
replace no_milk_jul17 = 1 if no_milk_jul17 >1
replace no_milk_jun17 = 1 if no_milk_jun17 >1
replace no_milk_may17 = 1 if no_milk_may17 >1
replace no_milk_apr17 = 1 if no_milk_apr17 >1
replace no_milk_mar17 = 1 if no_milk_mar17 >1
replace no_milk_feb17 = 1 if no_milk_feb17 >1
replace no_milk_jan17 = 1 if no_milk_jan17 >1
replace no_milk_dec16 = 1 if no_milk_dec16 >1

la  var  no_milk_nov17 "No Milk 2017Nov"
la  var  no_milk_oct17 "No Milk 2017Oct"
la  var  no_milk_sep17 "No Milk 2017Sept"
la  var  no_milk_aug17 "No Milk 2017Aug"
la  var  no_milk_jul17 "No Milk 2017Jul"
la  var  no_milk_jun17 "No Milk 2017June"
la  var  no_milk_may17 "No Milk 2017May"
la  var  no_milk_apr17 "No Milk 2017Apr"
la  var  no_milk_mar17 "No Milk 2017March"
la  var  no_milk_feb17 "No Milk 2017Feb"
la  var  no_milk_jan17 "No Milk 2017Jan"
la  var  no_milk_dec16 "No Milk 2016Dec"

la values ///
no_milk_nov17 ///
no_milk_oct17 ///
no_milk_sep17 ///
no_milk_aug17 ///
no_milk_jul17 ///
no_milk_jun17 ///
no_milk_may17 ///
no_milk_apr17 ///
no_milk_mar17 ///
no_milk_feb17 ///
no_milk_jan17 ///
no_milk_dec16 ///
yesno
********************************************************************************
gen low_milk_nov17 = strpos(g13b, "a")
gen low_milk_oct17 = strpos(g13b, "b")
gen low_milk_sep17 = strpos(g13b, "c")
gen low_milk_aug17 = strpos(g13b, "d")
gen low_milk_jul17 = strpos(g13b, "e")
gen low_milk_jun17 = strpos(g13b, "f")
gen low_milk_may17 = strpos(g13b, "g")
gen low_milk_apr17 = strpos(g13b, "h")
gen low_milk_mar17 = strpos(g13b, "i")
gen low_milk_feb17 = strpos(g13b, "j")
gen low_milk_jan17 = strpos(g13b, "k")
gen low_milk_dec16 = strpos(g13b, "l")

replace low_milk_nov17 = 1 if low_milk_nov17 >1
replace low_milk_oct17 = 1 if low_milk_oct17 >1
replace low_milk_sep17 = 1 if low_milk_sep17 >1
replace low_milk_aug17 = 1 if low_milk_aug17 >1
replace low_milk_jul17 = 1 if low_milk_jul17 >1
replace low_milk_jun17 = 1 if low_milk_jun17 >1
replace low_milk_may17 = 1 if low_milk_may17 >1
replace low_milk_apr17 = 1 if low_milk_apr17 >1
replace low_milk_mar17 = 1 if low_milk_mar17 >1
replace low_milk_feb17 = 1 if low_milk_feb17 >1
replace low_milk_jan17 = 1 if low_milk_jan17 >1
replace low_milk_dec16 = 1 if low_milk_dec16 >1

la  var  low_milk_nov17 "Low Milk 2017Nov"
la  var  low_milk_oct17 "Low Milk 2017Oct"
la  var  low_milk_sep17 "Low Milk 2017Sept"
la  var  low_milk_aug17 "Low Milk 2017Aug"
la  var  low_milk_jul17 "Low Milk 2017Jul"
la  var  low_milk_jun17 "Low Milk 2017June"
la  var  low_milk_may17 "Low Milk 2017May"
la  var  low_milk_apr17 "Low Milk 2017Apr"
la  var  low_milk_mar17 "Low Milk 2017March"
la  var  low_milk_feb17 "Low Milk 2017Feb"
la  var  low_milk_jan17 "Low Milk 2017Jan"
la  var  low_milk_dec16 "Low Milk 2016Dec"

la values ///
low_milk_nov17 ///
low_milk_oct17 ///
low_milk_sep17 ///
low_milk_aug17 ///
low_milk_jul17 ///
low_milk_jun17 ///
low_milk_may17 ///
low_milk_apr17 ///
low_milk_mar17 ///
low_milk_feb17 ///
low_milk_jan17 ///
low_milk_dec16 ///
yesno
********************************************************************************
gen av_milk_nov17 = strpos(g13c, "a")
gen av_milk_oct17 = strpos(g13c, "b")
gen av_milk_sep17 = strpos(g13c, "c")
gen av_milk_aug17 = strpos(g13c, "d")
gen av_milk_jul17 = strpos(g13c, "e")
gen av_milk_jun17 = strpos(g13c, "f")
gen av_milk_may17 = strpos(g13c, "g")
gen av_milk_apr17 = strpos(g13c, "h")
gen av_milk_mar17 = strpos(g13c, "i")
gen av_milk_feb17 = strpos(g13c, "j")
gen av_milk_jan17 = strpos(g13c, "k")
gen av_milk_dec16 = strpos(g13c, "l")

replace av_milk_nov17 = 1 if av_milk_nov17 >1
replace av_milk_oct17 = 1 if av_milk_oct17 >1
replace av_milk_sep17 = 1 if av_milk_sep17 >1
replace av_milk_aug17 = 1 if av_milk_aug17 >1
replace av_milk_jul17 = 1 if av_milk_jul17 >1
replace av_milk_jun17 = 1 if av_milk_jun17 >1
replace av_milk_may17 = 1 if av_milk_may17 >1
replace av_milk_apr17 = 1 if av_milk_apr17 >1
replace av_milk_mar17 = 1 if av_milk_mar17 >1
replace av_milk_feb17 = 1 if av_milk_feb17 >1
replace av_milk_jan17 = 1 if av_milk_jan17 >1
replace av_milk_dec16 = 1 if av_milk_dec16 >1

la  var  av_milk_nov17 "Average Milk 2017Nov"
la  var  av_milk_oct17 "Average Milk 2017Oct"
la  var  av_milk_sep17 "Average Milk 2017Sept"
la  var  av_milk_aug17 "Average Milk 2017Aug"
la  var  av_milk_jul17 "Average Milk 2017Jul"
la  var  av_milk_jun17 "Average Milk 2017June"
la  var  av_milk_may17 "Average Milk 2017May"
la  var  av_milk_apr17 "Average Milk 2017Apr"
la  var  av_milk_mar17 "Average Milk 2017March"
la  var  av_milk_feb17 "Average Milk 2017Feb"
la  var  av_milk_jan17 "Average Milk 2017Jan"
la  var  av_milk_dec16 "Average Milk 2016Dec"

la values ///
av_milk_nov17 ///
av_milk_oct17 ///
av_milk_sep17 ///
av_milk_aug17 ///
av_milk_jul17 ///
av_milk_jun17 ///
av_milk_may17 ///
av_milk_apr17 ///
av_milk_mar17 ///
av_milk_feb17 ///
av_milk_jan17 ///
av_milk_dec16 ///
yesno
********************************************************************************
gen high_milk_nov17 = strpos(g13d, "a")
gen high_milk_oct17 = strpos(g13d, "b")
gen high_milk_sep17 = strpos(g13d, "c")
gen high_milk_aug17 = strpos(g13d, "d")
gen high_milk_jul17 = strpos(g13d, "e")
gen high_milk_jun17 = strpos(g13d, "f")
gen high_milk_may17 = strpos(g13d, "g")
gen high_milk_apr17 = strpos(g13d, "h")
gen high_milk_mar17 = strpos(g13d, "i")
gen high_milk_feb17 = strpos(g13d, "j")
gen high_milk_jan17 = strpos(g13d, "k")
gen high_milk_dec16 = strpos(g13d, "l")

replace high_milk_nov17 = 1 if high_milk_nov17 >1
replace high_milk_oct17 = 1 if high_milk_oct17 >1
replace high_milk_sep17 = 1 if high_milk_sep17 >1
replace high_milk_aug17 = 1 if high_milk_aug17 >1
replace high_milk_jul17 = 1 if high_milk_jul17 >1
replace high_milk_jun17 = 1 if high_milk_jun17 >1
replace high_milk_may17 = 1 if high_milk_may17 >1
replace high_milk_apr17 = 1 if high_milk_apr17 >1
replace high_milk_mar17 = 1 if high_milk_mar17 >1
replace high_milk_feb17 = 1 if high_milk_feb17 >1
replace high_milk_jan17 = 1 if high_milk_jan17 >1
replace high_milk_dec16 = 1 if high_milk_dec16 >1

la  var  high_milk_nov17 "High Milk 2017Nov"
la  var  high_milk_oct17 "High Milk 2017Oct"
la  var  high_milk_sep17 "High Milk 2017Sept"
la  var  high_milk_aug17 "High Milk 2017Aug"
la  var  high_milk_jul17 "High Milk 2017Jul"
la  var  high_milk_jun17 "High Milk 2017June"
la  var  high_milk_may17 "High Milk 2017May"
la  var  high_milk_apr17 "High Milk 2017Apr"
la  var  high_milk_mar17 "High Milk 2017March"
la  var  high_milk_feb17 "High Milk 2017Feb"
la  var  high_milk_jan17 "High Milk 2017Jan"
la  var  high_milk_dec16 "High Milk 2016Dec"

la values ///
high_milk_nov17 ///
high_milk_oct17 ///
high_milk_sep17 ///
high_milk_aug17 ///
high_milk_jul17 ///
high_milk_jun17 ///
high_milk_may17 ///
high_milk_apr17 ///
high_milk_mar17 ///
high_milk_feb17 ///
high_milk_jan17 ///
high_milk_dec16 ///
yesno
********************************************************************************
gen no_oil_nov17 = strpos(g14a, "a")
gen no_oil_oct17 = strpos(g14a, "b")
gen no_oil_sep17 = strpos(g14a, "c")
gen no_oil_aug17 = strpos(g14a, "d")
gen no_oil_jul17 = strpos(g14a, "e")
gen no_oil_jun17 = strpos(g14a, "f")
gen no_oil_may17 = strpos(g14a, "g")
gen no_oil_apr17 = strpos(g14a, "h")
gen no_oil_mar17 = strpos(g14a, "i")
gen no_oil_feb17 = strpos(g14a, "j")
gen no_oil_jan17 = strpos(g14a, "k")
gen no_oil_dec16 = strpos(g14a, "l")

replace no_oil_nov17 = 1 if no_oil_nov17 >1
replace no_oil_oct17 = 1 if no_oil_oct17 >1
replace no_oil_sep17 = 1 if no_oil_sep17 >1
replace no_oil_aug17 = 1 if no_oil_aug17 >1
replace no_oil_jul17 = 1 if no_oil_jul17 >1
replace no_oil_jun17 = 1 if no_oil_jun17 >1
replace no_oil_may17 = 1 if no_oil_may17 >1
replace no_oil_apr17 = 1 if no_oil_apr17 >1
replace no_oil_mar17 = 1 if no_oil_mar17 >1
replace no_oil_feb17 = 1 if no_oil_feb17 >1
replace no_oil_jan17 = 1 if no_oil_jan17 >1
replace no_oil_dec16 = 1 if no_oil_dec16 >1

la  var  no_oil_nov17 "No Oil 2017Nov"
la  var  no_oil_oct17 "No Oil 2017Oct"
la  var  no_oil_sep17 "No Oil 2017Sept"
la  var  no_oil_aug17 "No Oil 2017Aug"
la  var  no_oil_jul17 "No Oil 2017Jul"
la  var  no_oil_jun17 "No Oil 2017June"
la  var  no_oil_may17 "No Oil 2017May"
la  var  no_oil_apr17 "No Oil 2017Apr"
la  var  no_oil_mar17 "No Oil 2017March"
la  var  no_oil_feb17 "No Oil 2017Feb"
la  var  no_oil_jan17 "No Oil 2017Jan"
la  var  no_oil_dec16 "No Oil 2016Dec"

la values ///
no_oil_nov17 ///
no_oil_oct17 ///
no_oil_sep17 ///
no_oil_aug17 ///
no_oil_jul17 ///
no_oil_jun17 ///
no_oil_may17 ///
no_oil_apr17 ///
no_oil_mar17 ///
no_oil_feb17 ///
no_oil_jan17 ///
no_oil_dec16 ///
yesno
********************************************************************************
gen low_oil_nov17 = strpos(g14b, "a")
gen low_oil_oct17 = strpos(g14b, "b")
gen low_oil_sep17 = strpos(g14b, "c")
gen low_oil_aug17 = strpos(g14b, "d")
gen low_oil_jul17 = strpos(g14b, "e")
gen low_oil_jun17 = strpos(g14b, "f")
gen low_oil_may17 = strpos(g14b, "g")
gen low_oil_apr17 = strpos(g14b, "h")
gen low_oil_mar17 = strpos(g14b, "i")
gen low_oil_feb17 = strpos(g14b, "j")
gen low_oil_jan17 = strpos(g14b, "k")
gen low_oil_dec16 = strpos(g14b, "l")

replace low_oil_nov17 = 1 if low_oil_nov17 >1
replace low_oil_oct17 = 1 if low_oil_oct17 >1
replace low_oil_sep17 = 1 if low_oil_sep17 >1
replace low_oil_aug17 = 1 if low_oil_aug17 >1
replace low_oil_jul17 = 1 if low_oil_jul17 >1
replace low_oil_jun17 = 1 if low_oil_jun17 >1
replace low_oil_may17 = 1 if low_oil_may17 >1
replace low_oil_apr17 = 1 if low_oil_apr17 >1
replace low_oil_mar17 = 1 if low_oil_mar17 >1
replace low_oil_feb17 = 1 if low_oil_feb17 >1
replace low_oil_jan17 = 1 if low_oil_jan17 >1
replace low_oil_dec16 = 1 if low_oil_dec16 >1

la  var  low_oil_nov17 "Low Oil 2017Nov"
la  var  low_oil_oct17 "Low Oil 2017Oct"
la  var  low_oil_sep17 "Low Oil 2017Sept"
la  var  low_oil_aug17 "Low Oil 2017Aug"
la  var  low_oil_jul17 "Low Oil 2017Jul"
la  var  low_oil_jun17 "Low Oil 2017June"
la  var  low_oil_may17 "Low Oil 2017May"
la  var  low_oil_apr17 "Low Oil 2017Apr"
la  var  low_oil_mar17 "Low Oil 2017March"
la  var  low_oil_feb17 "Low Oil 2017Feb"
la  var  low_oil_jan17 "Low Oil 2017Jan"
la  var  low_oil_dec16 "Low Oil 2016Dec"

la values ///
low_oil_nov17 ///
low_oil_oct17 ///
low_oil_sep17 ///
low_oil_aug17 ///
low_oil_jul17 ///
low_oil_jun17 ///
low_oil_may17 ///
low_oil_apr17 ///
low_oil_mar17 ///
low_oil_feb17 ///
low_oil_jan17 ///
low_oil_dec16 ///
yesno
********************************************************************************
gen av_oil_nov17 = strpos(g14c, "a")
gen av_oil_oct17 = strpos(g14c, "b")
gen av_oil_sep17 = strpos(g14c, "c")
gen av_oil_aug17 = strpos(g14c, "d")
gen av_oil_jul17 = strpos(g14c, "e")
gen av_oil_jun17 = strpos(g14c, "f")
gen av_oil_may17 = strpos(g14c, "g")
gen av_oil_apr17 = strpos(g14c, "h")
gen av_oil_mar17 = strpos(g14c, "i")
gen av_oil_feb17 = strpos(g14c, "j")
gen av_oil_jan17 = strpos(g14c, "k")
gen av_oil_dec16 = strpos(g14c, "l")

replace av_oil_nov17 = 1 if av_oil_nov17 >1
replace av_oil_oct17 = 1 if av_oil_oct17 >1
replace av_oil_sep17 = 1 if av_oil_sep17 >1
replace av_oil_aug17 = 1 if av_oil_aug17 >1
replace av_oil_jul17 = 1 if av_oil_jul17 >1
replace av_oil_jun17 = 1 if av_oil_jun17 >1
replace av_oil_may17 = 1 if av_oil_may17 >1
replace av_oil_apr17 = 1 if av_oil_apr17 >1
replace av_oil_mar17 = 1 if av_oil_mar17 >1
replace av_oil_feb17 = 1 if av_oil_feb17 >1
replace av_oil_jan17 = 1 if av_oil_jan17 >1
replace av_oil_dec16 = 1 if av_oil_dec16 >1

la  var  av_oil_nov17 "Average Oil 2017Nov"
la  var  av_oil_oct17 "Average Oil 2017Oct"
la  var  av_oil_sep17 "Average Oil 2017Sept"
la  var  av_oil_aug17 "Average Oil 2017Aug"
la  var  av_oil_jul17 "Average Oil 2017Jul"
la  var  av_oil_jun17 "Average Oil 2017June"
la  var  av_oil_may17 "Average Oil 2017May"
la  var  av_oil_apr17 "Average Oil 2017Apr"
la  var  av_oil_mar17 "Average Oil 2017March"
la  var  av_oil_feb17 "Average Oil 2017Feb"
la  var  av_oil_jan17 "Average Oil 2017Jan"
la  var  av_oil_dec16 "Average Oil 2016Dec"

la values ///
av_oil_nov17 ///
av_oil_oct17 ///
av_oil_sep17 ///
av_oil_aug17 ///
av_oil_jul17 ///
av_oil_jun17 ///
av_oil_may17 ///
av_oil_apr17 ///
av_oil_mar17 ///
av_oil_feb17 ///
av_oil_jan17 ///
av_oil_dec16 ///
yesno
********************************************************************************
gen high_oil_nov17 = strpos(g14d, "a")
gen high_oil_oct17 = strpos(g14d, "b")
gen high_oil_sep17 = strpos(g14d, "c")
gen high_oil_aug17 = strpos(g14d, "d")
gen high_oil_jul17 = strpos(g14d, "e")
gen high_oil_jun17 = strpos(g14d, "f")
gen high_oil_may17 = strpos(g14d, "g")
gen high_oil_apr17 = strpos(g14d, "h")
gen high_oil_mar17 = strpos(g14d, "i")
gen high_oil_feb17 = strpos(g14d, "j")
gen high_oil_jan17 = strpos(g14d, "k")
gen high_oil_dec16 = strpos(g14d, "l")

replace high_oil_nov17 = 1 if high_oil_nov17 >1
replace high_oil_oct17 = 1 if high_oil_oct17 >1
replace high_oil_sep17 = 1 if high_oil_sep17 >1
replace high_oil_aug17 = 1 if high_oil_aug17 >1
replace high_oil_jul17 = 1 if high_oil_jul17 >1
replace high_oil_jun17 = 1 if high_oil_jun17 >1
replace high_oil_may17 = 1 if high_oil_may17 >1
replace high_oil_apr17 = 1 if high_oil_apr17 >1
replace high_oil_mar17 = 1 if high_oil_mar17 >1
replace high_oil_feb17 = 1 if high_oil_feb17 >1
replace high_oil_jan17 = 1 if high_oil_jan17 >1
replace high_oil_dec16 = 1 if high_oil_dec16 >1

la  var  high_oil_nov17 "High Oil 2017Nov"
la  var  high_oil_oct17 "High Oil 2017Oct"
la  var  high_oil_sep17 "High Oil 2017Sept"
la  var  high_oil_aug17 "High Oil 2017Aug"
la  var  high_oil_jul17 "High Oil 2017Jul"
la  var  high_oil_jun17 "High Oil 2017June"
la  var  high_oil_may17 "High Oil 2017May"
la  var  high_oil_apr17 "High Oil 2017Apr"
la  var  high_oil_mar17 "High Oil 2017March"
la  var  high_oil_feb17 "High Oil 2017Feb"
la  var  high_oil_jan17 "High Oil 2017Jan"
la  var  high_oil_dec16 "High Oil 2016Dec"

la values ///
high_oil_nov17 ///
high_oil_oct17 ///
high_oil_sep17 ///
high_oil_aug17 ///
high_oil_jul17 ///
high_oil_jun17 ///
high_oil_may17 ///
high_oil_apr17 ///
high_oil_mar17 ///
high_oil_feb17 ///
high_oil_jan17 ///
high_oil_dec16 ///
yesno
********************************************************************************
gen no_sugar_nov17 = strpos(g15a, "a")
gen no_sugar_oct17 = strpos(g15a, "b")
gen no_sugar_sep17 = strpos(g15a, "c")
gen no_sugar_aug17 = strpos(g15a, "d")
gen no_sugar_jul17 = strpos(g15a, "e")
gen no_sugar_jun17 = strpos(g15a, "f")
gen no_sugar_may17 = strpos(g15a, "g")
gen no_sugar_apr17 = strpos(g15a, "h")
gen no_sugar_mar17 = strpos(g15a, "i")
gen no_sugar_feb17 = strpos(g15a, "j")
gen no_sugar_jan17 = strpos(g15a, "k")
gen no_sugar_dec16 = strpos(g15a, "l")

replace no_sugar_nov17 = 1 if no_sugar_nov17 >1
replace no_sugar_oct17 = 1 if no_sugar_oct17 >1
replace no_sugar_sep17 = 1 if no_sugar_sep17 >1
replace no_sugar_aug17 = 1 if no_sugar_aug17 >1
replace no_sugar_jul17 = 1 if no_sugar_jul17 >1
replace no_sugar_jun17 = 1 if no_sugar_jun17 >1
replace no_sugar_may17 = 1 if no_sugar_may17 >1
replace no_sugar_apr17 = 1 if no_sugar_apr17 >1
replace no_sugar_mar17 = 1 if no_sugar_mar17 >1
replace no_sugar_feb17 = 1 if no_sugar_feb17 >1
replace no_sugar_jan17 = 1 if no_sugar_jan17 >1
replace no_sugar_dec16 = 1 if no_sugar_dec16 >1

la  var  no_sugar_nov17 "No Sugar 2017Nov"
la  var  no_sugar_oct17 "No Sugar 2017Oct"
la  var  no_sugar_sep17 "No Sugar 2017Sept"
la  var  no_sugar_aug17 "No Sugar 2017Aug"
la  var  no_sugar_jul17 "No Sugar 2017Jul"
la  var  no_sugar_jun17 "No Sugar 2017June"
la  var  no_sugar_may17 "No Sugar 2017May"
la  var  no_sugar_apr17 "No Sugar 2017Apr"
la  var  no_sugar_mar17 "No Sugar 2017March"
la  var  no_sugar_feb17 "No Sugar 2017Feb"
la  var  no_sugar_jan17 "No Sugar 2017Jan"
la  var  no_sugar_dec16 "No Sugar 2016Dec"

la values ///
no_sugar_nov17 ///
no_sugar_oct17 ///
no_sugar_sep17 ///
no_sugar_aug17 ///
no_sugar_jul17 ///
no_sugar_jun17 ///
no_sugar_may17 ///
no_sugar_apr17 ///
no_sugar_mar17 ///
no_sugar_feb17 ///
no_sugar_jan17 ///
no_sugar_dec16 ///
yesno
********************************************************************************
gen low_sugar_nov17 = strpos(g15b, "a")
gen low_sugar_oct17 = strpos(g15b, "b")
gen low_sugar_sep17 = strpos(g15b, "c")
gen low_sugar_aug17 = strpos(g15b, "d")
gen low_sugar_jul17 = strpos(g15b, "e")
gen low_sugar_jun17 = strpos(g15b, "f")
gen low_sugar_may17 = strpos(g15b, "g")
gen low_sugar_apr17 = strpos(g15b, "h")
gen low_sugar_mar17 = strpos(g15b, "i")
gen low_sugar_feb17 = strpos(g15b, "j")
gen low_sugar_jan17 = strpos(g15b, "k")
gen low_sugar_dec16 = strpos(g15b, "l")

replace low_sugar_nov17 = 1 if low_sugar_nov17 >1
replace low_sugar_oct17 = 1 if low_sugar_oct17 >1
replace low_sugar_sep17 = 1 if low_sugar_sep17 >1
replace low_sugar_aug17 = 1 if low_sugar_aug17 >1
replace low_sugar_jul17 = 1 if low_sugar_jul17 >1
replace low_sugar_jun17 = 1 if low_sugar_jun17 >1
replace low_sugar_may17 = 1 if low_sugar_may17 >1
replace low_sugar_apr17 = 1 if low_sugar_apr17 >1
replace low_sugar_mar17 = 1 if low_sugar_mar17 >1
replace low_sugar_feb17 = 1 if low_sugar_feb17 >1
replace low_sugar_jan17 = 1 if low_sugar_jan17 >1
replace low_sugar_dec16 = 1 if low_sugar_dec16 >1

la  var  low_sugar_nov17 "Low Sugar 2017Nov"
la  var  low_sugar_oct17 "Low Sugar 2017Oct"
la  var  low_sugar_sep17 "Low Sugar 2017Sept"
la  var  low_sugar_aug17 "Low Sugar 2017Aug"
la  var  low_sugar_jul17 "Low Sugar 2017Jul"
la  var  low_sugar_jun17 "Low Sugar 2017June"
la  var  low_sugar_may17 "Low Sugar 2017May"
la  var  low_sugar_apr17 "Low Sugar 2017Apr"
la  var  low_sugar_mar17 "Low Sugar 2017March"
la  var  low_sugar_feb17 "Low Sugar 2017Feb"
la  var  low_sugar_jan17 "Low Sugar 2017Jan"
la  var  low_sugar_dec16 "Low Sugar 2016Dec"

la values ///
low_sugar_nov17 ///
low_sugar_oct17 ///
low_sugar_sep17 ///
low_sugar_aug17 ///
low_sugar_jul17 ///
low_sugar_jun17 ///
low_sugar_may17 ///
low_sugar_apr17 ///
low_sugar_mar17 ///
low_sugar_feb17 ///
low_sugar_jan17 ///
low_sugar_dec16 ///
yesno
********************************************************************************
gen av_sugar_nov17 = strpos(g15c, "a")
gen av_sugar_oct17 = strpos(g15c, "b")
gen av_sugar_sep17 = strpos(g15c, "c")
gen av_sugar_aug17 = strpos(g15c, "d")
gen av_sugar_jul17 = strpos(g15c, "e")
gen av_sugar_jun17 = strpos(g15c, "f")
gen av_sugar_may17 = strpos(g15c, "g")
gen av_sugar_apr17 = strpos(g15c, "h")
gen av_sugar_mar17 = strpos(g15c, "i")
gen av_sugar_feb17 = strpos(g15c, "j")
gen av_sugar_jan17 = strpos(g15c, "k")
gen av_sugar_dec16 = strpos(g15c, "l")

replace av_sugar_nov17 = 1 if av_sugar_nov17 >1
replace av_sugar_oct17 = 1 if av_sugar_oct17 >1
replace av_sugar_sep17 = 1 if av_sugar_sep17 >1
replace av_sugar_aug17 = 1 if av_sugar_aug17 >1
replace av_sugar_jul17 = 1 if av_sugar_jul17 >1
replace av_sugar_jun17 = 1 if av_sugar_jun17 >1
replace av_sugar_may17 = 1 if av_sugar_may17 >1
replace av_sugar_apr17 = 1 if av_sugar_apr17 >1
replace av_sugar_mar17 = 1 if av_sugar_mar17 >1
replace av_sugar_feb17 = 1 if av_sugar_feb17 >1
replace av_sugar_jan17 = 1 if av_sugar_jan17 >1
replace av_sugar_dec16 = 1 if av_sugar_dec16 >1

la  var  av_sugar_nov17 "Average Sugar 2017Nov"
la  var  av_sugar_oct17 "Average Sugar 2017Oct"
la  var  av_sugar_sep17 "Average Sugar 2017Sept"
la  var  av_sugar_aug17 "Average Sugar 2017Aug"
la  var  av_sugar_jul17 "Average Sugar 2017Jul"
la  var  av_sugar_jun17 "Average Sugar 2017June"
la  var  av_sugar_may17 "Average Sugar 2017May"
la  var  av_sugar_apr17 "Average Sugar 2017Apr"
la  var  av_sugar_mar17 "Average Sugar 2017March"
la  var  av_sugar_feb17 "Average Sugar 2017Feb"
la  var  av_sugar_jan17 "Average Sugar 2017Jan"
la  var  av_sugar_dec16 "Average Sugar 2016Dec"

la values ///
av_sugar_nov17 ///
av_sugar_oct17 ///
av_sugar_sep17 ///
av_sugar_aug17 ///
av_sugar_jul17 ///
av_sugar_jun17 ///
av_sugar_may17 ///
av_sugar_apr17 ///
av_sugar_mar17 ///
av_sugar_feb17 ///
av_sugar_jan17 ///
av_sugar_dec16 ///
yesno
********************************************************************************
gen high_sugar_nov17 = strpos(g15d, "a")
gen high_sugar_oct17 = strpos(g15d, "b")
gen high_sugar_sep17 = strpos(g15d, "c")
gen high_sugar_aug17 = strpos(g15d, "d")
gen high_sugar_jul17 = strpos(g15d, "e")
gen high_sugar_jun17 = strpos(g15d, "f")
gen high_sugar_may17 = strpos(g15d, "g")
gen high_sugar_apr17 = strpos(g15d, "h")
gen high_sugar_mar17 = strpos(g15d, "i")
gen high_sugar_feb17 = strpos(g15d, "j")
gen high_sugar_jan17 = strpos(g15d, "k")
gen high_sugar_dec16 = strpos(g15d, "l")

replace high_sugar_nov17 = 1 if high_sugar_nov17 >1
replace high_sugar_oct17 = 1 if high_sugar_oct17 >1
replace high_sugar_sep17 = 1 if high_sugar_sep17 >1
replace high_sugar_aug17 = 1 if high_sugar_aug17 >1
replace high_sugar_jul17 = 1 if high_sugar_jul17 >1
replace high_sugar_jun17 = 1 if high_sugar_jun17 >1
replace high_sugar_may17 = 1 if high_sugar_may17 >1
replace high_sugar_apr17 = 1 if high_sugar_apr17 >1
replace high_sugar_mar17 = 1 if high_sugar_mar17 >1
replace high_sugar_feb17 = 1 if high_sugar_feb17 >1
replace high_sugar_jan17 = 1 if high_sugar_jan17 >1
replace high_sugar_dec16 = 1 if high_sugar_dec16 >1

la  var  high_sugar_nov17 "High Sugar 2017Nov"
la  var  high_sugar_oct17 "High Sugar 2017Oct"
la  var  high_sugar_sep17 "High Sugar 2017Sept"
la  var  high_sugar_aug17 "High Sugar 2017Aug"
la  var  high_sugar_jul17 "High Sugar 2017Jul"
la  var  high_sugar_jun17 "High Sugar 2017June"
la  var  high_sugar_may17 "High Sugar 2017May"
la  var  high_sugar_apr17 "High Sugar 2017Apr"
la  var  high_sugar_mar17 "High Sugar 2017March"
la  var  high_sugar_feb17 "High Sugar 2017Feb"
la  var  high_sugar_jan17 "High Sugar 2017Jan"
la  var  high_sugar_dec16 "High Sugar 2016Dec"

la values ///
high_sugar_nov17 ///
high_sugar_oct17 ///
high_sugar_sep17 ///
high_sugar_aug17 ///
high_sugar_jul17 ///
high_sugar_jun17 ///
high_sugar_may17 ///
high_sugar_apr17 ///
high_sugar_mar17 ///
high_sugar_feb17 ///
high_sugar_jan17 ///
high_sugar_dec16 ///
yesno
********************************************************************************
gen no_condiments_nov17 = strpos(g16a, "a")
gen no_condiments_oct17 = strpos(g16a, "b")
gen no_condiments_sep17 = strpos(g16a, "c")
gen no_condiments_aug17 = strpos(g16a, "d")
gen no_condiments_jul17 = strpos(g16a, "e")
gen no_condiments_jun17 = strpos(g16a, "f")
gen no_condiments_may17 = strpos(g16a, "g")
gen no_condiments_apr17 = strpos(g16a, "h")
gen no_condiments_mar17 = strpos(g16a, "i")
gen no_condiments_feb17 = strpos(g16a, "j")
gen no_condiments_jan17 = strpos(g16a, "k")
gen no_condiments_dec16 = strpos(g16a, "l")

replace no_condiments_nov17 = 1 if no_condiments_nov17 >1
replace no_condiments_oct17 = 1 if no_condiments_oct17 >1
replace no_condiments_sep17 = 1 if no_condiments_sep17 >1
replace no_condiments_aug17 = 1 if no_condiments_aug17 >1
replace no_condiments_jul17 = 1 if no_condiments_jul17 >1
replace no_condiments_jun17 = 1 if no_condiments_jun17 >1
replace no_condiments_may17 = 1 if no_condiments_may17 >1
replace no_condiments_apr17 = 1 if no_condiments_apr17 >1
replace no_condiments_mar17 = 1 if no_condiments_mar17 >1
replace no_condiments_feb17 = 1 if no_condiments_feb17 >1
replace no_condiments_jan17 = 1 if no_condiments_jan17 >1
replace no_condiments_dec16 = 1 if no_condiments_dec16 >1

la  var  no_condiments_nov17 "No Condiments 2017Nov"
la  var  no_condiments_oct17 "No Condiments 2017Oct"
la  var  no_condiments_sep17 "No Condiments 2017Sept"
la  var  no_condiments_aug17 "No Condiments 2017Aug"
la  var  no_condiments_jul17 "No Condiments 2017Jul"
la  var  no_condiments_jun17 "No Condiments 2017June"
la  var  no_condiments_may17 "No Condiments 2017May"
la  var  no_condiments_apr17 "No Condiments 2017Apr"
la  var  no_condiments_mar17 "No Condiments 2017March"
la  var  no_condiments_feb17 "No Condiments 2017Feb"
la  var  no_condiments_jan17 "No Condiments 2017Jan"
la  var  no_condiments_dec16 "No Condiments 2016Dec"

la values ///
no_condiments_nov17 ///
no_condiments_oct17 ///
no_condiments_sep17 ///
no_condiments_aug17 ///
no_condiments_jul17 ///
no_condiments_jun17 ///
no_condiments_may17 ///
no_condiments_apr17 ///
no_condiments_mar17 ///
no_condiments_feb17 ///
no_condiments_jan17 ///
no_condiments_dec16 ///
yesno
********************************************************************************
gen low_condiments_nov17 = strpos(g16b, "a")
gen low_condiments_oct17 = strpos(g16b, "b")
gen low_condiments_sep17 = strpos(g16b, "c")
gen low_condiments_aug17 = strpos(g16b, "d")
gen low_condiments_jul17 = strpos(g16b, "e")
gen low_condiments_jun17 = strpos(g16b, "f")
gen low_condiments_may17 = strpos(g16b, "g")
gen low_condiments_apr17 = strpos(g16b, "h")
gen low_condiments_mar17 = strpos(g16b, "i")
gen low_condiments_feb17 = strpos(g16b, "j")
gen low_condiments_jan17 = strpos(g16b, "k")
gen low_condiments_dec16 = strpos(g16b, "l")

replace low_condiments_nov17 = 1 if low_condiments_nov17 >1
replace low_condiments_oct17 = 1 if low_condiments_oct17 >1
replace low_condiments_sep17 = 1 if low_condiments_sep17 >1
replace low_condiments_aug17 = 1 if low_condiments_aug17 >1
replace low_condiments_jul17 = 1 if low_condiments_jul17 >1
replace low_condiments_jun17 = 1 if low_condiments_jun17 >1
replace low_condiments_may17 = 1 if low_condiments_may17 >1
replace low_condiments_apr17 = 1 if low_condiments_apr17 >1
replace low_condiments_mar17 = 1 if low_condiments_mar17 >1
replace low_condiments_feb17 = 1 if low_condiments_feb17 >1
replace low_condiments_jan17 = 1 if low_condiments_jan17 >1
replace low_condiments_dec16 = 1 if low_condiments_dec16 >1

la  var  low_condiments_nov17 "Low Condiments 2017Nov"
la  var  low_condiments_oct17 "Low Condiments 2017Oct"
la  var  low_condiments_sep17 "Low Condiments 2017Sept"
la  var  low_condiments_aug17 "Low Condiments 2017Aug"
la  var  low_condiments_jul17 "Low Condiments 2017Jul"
la  var  low_condiments_jun17 "Low Condiments 2017June"
la  var  low_condiments_may17 "Low Condiments 2017May"
la  var  low_condiments_apr17 "Low Condiments 2017Apr"
la  var  low_condiments_mar17 "Low Condiments 2017March"
la  var  low_condiments_feb17 "Low Condiments 2017Feb"
la  var  low_condiments_jan17 "Low Condiments 2017Jan"
la  var  low_condiments_dec16 "Low Condiments 2016Dec"

la values ///
low_condiments_nov17 ///
low_condiments_oct17 ///
low_condiments_sep17 ///
low_condiments_aug17 ///
low_condiments_jul17 ///
low_condiments_jun17 ///
low_condiments_may17 ///
low_condiments_apr17 ///
low_condiments_mar17 ///
low_condiments_feb17 ///
low_condiments_jan17 ///
low_condiments_dec16 ///
yesno
********************************************************************************
gen av_condiments_nov17 = strpos(g16c, "a")
gen av_condiments_oct17 = strpos(g16c, "b")
gen av_condiments_sep17 = strpos(g16c, "c")
gen av_condiments_aug17 = strpos(g16c, "d")
gen av_condiments_jul17 = strpos(g16c, "e")
gen av_condiments_jun17 = strpos(g16c, "f")
gen av_condiments_may17 = strpos(g16c, "g")
gen av_condiments_apr17 = strpos(g16c, "h")
gen av_condiments_mar17 = strpos(g16c, "i")
gen av_condiments_feb17 = strpos(g16c, "j")
gen av_condiments_jan17 = strpos(g16c, "k")
gen av_condiments_dec16 = strpos(g16c, "l")

replace av_condiments_nov17 = 1 if av_condiments_nov17 >1
replace av_condiments_oct17 = 1 if av_condiments_oct17 >1
replace av_condiments_sep17 = 1 if av_condiments_sep17 >1
replace av_condiments_aug17 = 1 if av_condiments_aug17 >1
replace av_condiments_jul17 = 1 if av_condiments_jul17 >1
replace av_condiments_jun17 = 1 if av_condiments_jun17 >1
replace av_condiments_may17 = 1 if av_condiments_may17 >1
replace av_condiments_apr17 = 1 if av_condiments_apr17 >1
replace av_condiments_mar17 = 1 if av_condiments_mar17 >1
replace av_condiments_feb17 = 1 if av_condiments_feb17 >1
replace av_condiments_jan17 = 1 if av_condiments_jan17 >1
replace av_condiments_dec16 = 1 if av_condiments_dec16 >1

la  var  av_condiments_nov17 "Average Condiments 2017Nov"
la  var  av_condiments_oct17 "Average Condiments 2017Oct"
la  var  av_condiments_sep17 "Average Condiments 2017Sept"
la  var  av_condiments_aug17 "Average Condiments 2017Aug"
la  var  av_condiments_jul17 "Average Condiments 2017Jul"
la  var  av_condiments_jun17 "Average Condiments 2017June"
la  var  av_condiments_may17 "Average Condiments 2017May"
la  var  av_condiments_apr17 "Average Condiments 2017Apr"
la  var  av_condiments_mar17 "Average Condiments 2017March"
la  var  av_condiments_feb17 "Average Condiments 2017Feb"
la  var  av_condiments_jan17 "Average Condiments 2017Jan"
la  var  av_condiments_dec16 "Average Condiments 2016Dec"

la values ///
av_condiments_nov17 ///
av_condiments_oct17 ///
av_condiments_sep17 ///
av_condiments_aug17 ///
av_condiments_jul17 ///
av_condiments_jun17 ///
av_condiments_may17 ///
av_condiments_apr17 ///
av_condiments_mar17 ///
av_condiments_feb17 ///
av_condiments_jan17 ///
av_condiments_dec16 ///
yesno
********************************************************************************
gen high_condiments_nov17 = strpos(g16d, "a")
gen high_condiments_oct17 = strpos(g16d, "b")
gen high_condiments_sep17 = strpos(g16d, "c")
gen high_condiments_aug17 = strpos(g16d, "d")
gen high_condiments_jul17 = strpos(g16d, "e")
gen high_condiments_jun17 = strpos(g16d, "f")
gen high_condiments_may17 = strpos(g16d, "g")
gen high_condiments_apr17 = strpos(g16d, "h")
gen high_condiments_mar17 = strpos(g16d, "i")
gen high_condiments_feb17 = strpos(g16d, "j")
gen high_condiments_jan17 = strpos(g16d, "k")
gen high_condiments_dec16 = strpos(g16d, "l")

replace high_condiments_nov17 = 1 if high_condiments_nov17 >1
replace high_condiments_oct17 = 1 if high_condiments_oct17 >1
replace high_condiments_sep17 = 1 if high_condiments_sep17 >1
replace high_condiments_aug17 = 1 if high_condiments_aug17 >1
replace high_condiments_jul17 = 1 if high_condiments_jul17 >1
replace high_condiments_jun17 = 1 if high_condiments_jun17 >1
replace high_condiments_may17 = 1 if high_condiments_may17 >1
replace high_condiments_apr17 = 1 if high_condiments_apr17 >1
replace high_condiments_mar17 = 1 if high_condiments_mar17 >1
replace high_condiments_feb17 = 1 if high_condiments_feb17 >1
replace high_condiments_jan17 = 1 if high_condiments_jan17 >1
replace high_condiments_dec16 = 1 if high_condiments_dec16 >1

la  var  high_condiments_nov17 "High Condiments 2017Nov"
la  var  high_condiments_oct17 "High Condiments 2017Oct"
la  var  high_condiments_sep17 "High Condiments 2017Sept"
la  var  high_condiments_aug17 "High Condiments 2017Aug"
la  var  high_condiments_jul17 "High Condiments 2017Jul"
la  var  high_condiments_jun17 "High Condiments 2017June"
la  var  high_condiments_may17 "High Condiments 2017May"
la  var  high_condiments_apr17 "High Condiments 2017Apr"
la  var  high_condiments_mar17 "High Condiments 2017March"
la  var  high_condiments_feb17 "High Condiments 2017Feb"
la  var  high_condiments_jan17 "High Condiments 2017Jan"
la  var  high_condiments_dec16 "High Condiments 2016Dec"

la values ///
high_condiments_nov17 ///
high_condiments_oct17 ///
high_condiments_sep17 ///
high_condiments_aug17 ///
high_condiments_jul17 ///
high_condiments_jun17 ///
high_condiments_may17 ///
high_condiments_apr17 ///
high_condiments_mar17 ///
high_condiments_feb17 ///
high_condiments_jan17 ///
high_condiments_dec16 ///
yesno
********************************************************************************

gen double int_end = clock(f00, "hms") 
format int_end %tc_HH:MM:SS

drop f00
la var  int_end "Time Interview Ended"
save "Module C", replace


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































