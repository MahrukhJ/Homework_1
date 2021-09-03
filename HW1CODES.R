1. Adelia Fida, Hassan Fayyaz, Hugo Pinto, Tanmay Thomas 

Experiment #1: Initial Roll           Experiment #2: Adjusted Die           Experiment #3: Completely Destroyed Die!
If 6, (1), if 1-5, (0)                If 6, (1), if 1-5, (0)                If 6, (1), if 1-5, (0)
          1                                       1                                       0
          0                                       0                                       0
          0                                       0                                       0
          0                                       1                                       0
          0                                       1                                       0
          0                                       0                                       1
          0                                       0                                       1
          0                                       0                                       0
          0                                       1                                       0
          1                                       0                                       0
          0                                       0                                       0
          0                                       0                                       0
          0                                       0                                       0
          0                                       0                                       1
          0                                       0                                       0
          0                                       1                                       0
          0                                       0                                       0
          0                                       0                                       0
          0                                       0                                       1
          1                                       1                                       0
Total:
          3                                       6                                       4

After much consideration and pondering, I decided that melting the corners of the 6 would remove some weight and might aid in increasing the frequency, and thus probability, of landing on a preferred number. 
As I was melting the corners, I noticed that the adjusted corners were rough and might even create resistance in turning and thus, prevent the die from rolling onto a different face. 
Experiment #2 details this attempt. 
Melting the corners on the face of the 6 doubled the frequency of rolling a 6, compared to the results of Experiment #1, where a control die was used.
Following the results of this experiment, I wondered if carving ridges along the sides of the 6 would increase the resistance and frequency. 
Experiment #3 details this attempt. 
Interestingly, this attempt generated less rolls than the second experiment. Specifically, the fair die landed on a 6, 3 out of 20 rolls, the adjusted die landed on a 6, 6 times out of 20 rolls and the adjusted die with ridges, landed on a 6, 4 times out of 20. 
This brings me to the conclusion that the die cannot be adjusted to land on a certain face at an increased frequency when compared to a fair die, given that the probability of a landing on a 6 remains the same. 


After downloading the PUMS data and extracting acs2017_ny_data from the zip file, I was able to set the data to working directory. Now, I can load the data and run commands!

load("acs2017_ny_data.RData")
#glimpse(acs2017_ny) try this later
acs2017_ny[1:10,1:7]

AGE female educ_nohs educ_hs educ_somecoll educ_college educ_advdeg
1   72      1         0       0             0            0           1
2   72      0         0       0             0            0           1
3   31      0         0       0             0            1           0
4   28      1         0       0             0            1           0
5   54      0         0       0             0            0           1
6   45      1         0       1             0            0           0
7   84      1         0       0             1            0           0
8   71      0         0       0             0            1           0
9   68      1         0       0             1            0           0
10  37      1         1       0             0            0           0

Attaching the data will allow us to access variables that are present in the data framework without calling the data frame. 

attach(acs2017_ny)

To find out more about the data, we can use the summary command. 

summary(acs2017_ny)

  AGE            female         educ_nohs        educ_hs       educ_somecoll  
 Min.   : 0.00   Min.   :0.0000   Min.   :0.000   Min.   :0.0000   Min.   :0.000  
 1st Qu.:22.00   1st Qu.:0.0000   1st Qu.:0.000   1st Qu.:0.0000   1st Qu.:0.000  
 Median :42.00   Median :1.0000   Median :0.000   Median :0.0000   Median :0.000  
 Mean   :41.57   Mean   :0.5156   Mean   :0.271   Mean   :0.2804   Mean   :0.173  
 3rd Qu.:60.00   3rd Qu.:1.0000   3rd Qu.:1.000   3rd Qu.:1.0000   3rd Qu.:0.000  
 Max.   :95.00   Max.   :1.0000   Max.   :1.000   Max.   :1.0000   Max.   :1.000  
                                                                                  
  educ_college     educ_advdeg                  SCHOOL                              EDUC      
 Min.   :0.0000   Min.   :0.000   N/A              :  5569   Grade 12                 :55119  
 1st Qu.:0.0000   1st Qu.:0.000   No, not in school:144968   4 years of college       :30802  
 Median :0.0000   Median :0.000   Yes, in school   : 46048   5+ years of college      :23385  
 Mean   :0.1567   Mean   :0.119   Missing          :     0   1 year of college        :19947  
 3rd Qu.:0.0000   3rd Qu.:0.000                              Nursery school to grade 4:14240  
 Max.   :1.0000   Max.   :1.000                              2 years of college       :14065  
                                                             (Other)                  :39027  
                                          EDUCD      
 Regular high school diploma                 :35689  
 Bachelor's degree                           :30802  
 1 or more years of college credit, no degree:19947  
 Master's degree                             :17010  
 Associate's degree, type not specified      :14065  
 Some college, but less than 1 year          : 9086  
 (Other)                                     :69986  
                                     DEGFIELD                                       DEGFIELDD     
 N/A                                     :142398   N/A                                   :142398  
 Business                                :  9802   Psychology                            :  2926  
 Education Administration and Teaching   :  6708   Business Management and Administration:  2501  
 Social Sciences                         :  4836   Accounting                            :  2284  
 Medical and Health Sciences and Services:  3919   General Education                     :  2238  
 Fine Arts                               :  3491   English Language and Literature       :  2202  
 (Other)                                 : 25431   (Other)                               : 42036  
                                 DEGFIELD2     
 N/A                                  :190425  
 Business                             :   972  
 Social Sciences                      :   853  
 Education Administration and Teaching:   611  
 Fine Arts                            :   465  
 Communications                       :   352  
 (Other)                              :  2907  
                                                           DEGFIELD2D          PUMA     
 N/A                                                            :190425   Min.   : 100  
 Psychology                                                     :   284   1st Qu.:1500  
 Economics                                                      :   260   Median :3201  
 Political Science and Government                               :   243   Mean   :2713  
 Business Management and Administration                         :   217   3rd Qu.:3902  
 French, German, Latin and Other Common Foreign Language Studies:   205   Max.   :4114  
 (Other)                                                        :  4951                 
       GQ           OWNERSHP       OWNERSHPD        MORTGAGE        OWNCOST           RENT     
 Min.   :1.000   Min.   :0.000   Min.   : 0.00   Min.   :0.000   Min.   :    0   Min.   :   0  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:12.00   1st Qu.:0.000   1st Qu.: 1208   1st Qu.:   0  
 Median :1.000   Median :1.000   Median :13.00   Median :1.000   Median : 2891   Median :   0  
 Mean   :1.148   Mean   :1.266   Mean   :14.95   Mean   :1.453   Mean   :38582   Mean   : 393  
 3rd Qu.:1.000   3rd Qu.:2.000   3rd Qu.:22.00   3rd Qu.:3.000   3rd Qu.:99999   3rd Qu.: 630  
 Max.   :5.000   Max.   :2.000   Max.   :22.00   Max.   :4.000   Max.   :99999   Max.   :3800  
                                                                                               
    COSTELEC       COSTGAS        COSTWATR       COSTFUEL       HHINCOME          FOODSTMP    
 Min.   :   0   Min.   :   0   Min.   :   0   Min.   :   0   Min.   : -11800   Min.   :1.000  
 1st Qu.: 960   1st Qu.: 840   1st Qu.: 320   1st Qu.:9993   1st Qu.:  41600   1st Qu.:1.000  
 Median :1560   Median :2400   Median :1400   Median :9993   Median :  81700   Median :1.000  
 Mean   :2311   Mean   :5032   Mean   :4836   Mean   :7935   Mean   : 114902   Mean   :1.147  
 3rd Qu.:2520   3rd Qu.:9993   3rd Qu.:9993   3rd Qu.:9993   3rd Qu.: 140900   3rd Qu.:1.000  
 Max.   :9997   Max.   :9997   Max.   :9997   Max.   :9997   Max.   :2030000   Max.   :2.000  
                                                             NA's   :10630                    
    LINGISOL         ROOMS           BUILTYR2         UNITSSTR        FUELHEAT    
 Min.   :0.000   Min.   : 0.000   Min.   : 0.000   Min.   : 0.00   Min.   :0.000  
 1st Qu.:1.000   1st Qu.: 4.000   1st Qu.: 1.000   1st Qu.: 3.00   1st Qu.:2.000  
 Median :1.000   Median : 6.000   Median : 3.000   Median : 3.00   Median :2.000  
 Mean   :1.002   Mean   : 5.887   Mean   : 3.711   Mean   : 4.39   Mean   :2.959  
 3rd Qu.:1.000   3rd Qu.: 8.000   3rd Qu.: 5.000   3rd Qu.: 6.00   3rd Qu.:4.000  
 Max.   :2.000   Max.   :16.000   Max.   :22.000   Max.   :10.00   Max.   :9.000  
                                                                                  
      SSMC            FAMSIZE           NCHILD           NCHLT5            RELATE      
 Min.   :0.00000   Min.   : 1.000   Min.   :0.0000   Min.   :0.00000   Min.   : 1.000  
 1st Qu.:0.00000   1st Qu.: 2.000   1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.: 1.000  
 Median :0.00000   Median : 3.000   Median :0.0000   Median :0.00000   Median : 2.000  
 Mean   :0.01102   Mean   : 3.087   Mean   :0.5009   Mean   :0.08441   Mean   : 3.307  
 3rd Qu.:0.00000   3rd Qu.: 4.000   3rd Qu.:1.0000   3rd Qu.:0.00000   3rd Qu.: 3.000  
 Max.   :2.00000   Max.   :19.000   Max.   :9.0000   Max.   :5.00000   Max.   :13.000  
                                                                                       
    RELATED           MARST            RACE          RACED         HISPAN          HISPAND      
 Min.   : 101.0   Min.   :1.000   Min.   :1.00   Min.   :100   Min.   :0.0000   Min.   :  0.00  
 1st Qu.: 101.0   1st Qu.:1.000   1st Qu.:1.00   1st Qu.:100   1st Qu.:0.0000   1st Qu.:  0.00  
 Median : 201.0   Median :5.000   Median :1.00   Median :100   Median :0.0000   Median :  0.00  
 Mean   : 335.6   Mean   :3.742   Mean   :2.03   Mean   :205   Mean   :0.4153   Mean   : 44.75  
 3rd Qu.: 301.0   3rd Qu.:6.000   3rd Qu.:2.00   3rd Qu.:200   3rd Qu.:0.0000   3rd Qu.:  0.00  
 Max.   :1301.0   Max.   :6.000   Max.   :9.00   Max.   :990   Max.   :4.0000   Max.   :498.00  
                                                                                                
            BPL                         BPLD                            ANCESTR1    
 New York     :128517   New York          :128517   Not Reported            :32021  
 West Indies  :  8481   China             :  4116   Italian                 :20577  
 China        :  4964   Dominican Republic:  3517   Irish, various subheads,:16388  
 SOUTH AMERICA:  4957   Pennsylvania      :  3303   German                  :12781  
 India        :  3476   New Jersey        :  3127   African-American        : 9559  
 Pennsylvania :  3303   Puerto Rico       :  2272   United States           : 8209  
 (Other)      : 42887   (Other)           : 51733   (Other)                 :97050  
                                   ANCESTR1D             ANCESTR2     
 Not Reported                           :32021   Not Reported:141487  
 Italian (1990-2000, ACS, PRCS)         :20577   German      :  9476  
 Irish                                  :15651   Irish       :  9238  
 German (1990-2000, ACS/PRCS)           :12605   English     :  4895  
 African-American (1990-2000, ACS, PRCS): 9559   Italian     :  4531  
 United States                          : 8209   Polish      :  3113  
 (Other)                                :97963   (Other)     : 23845  
                          ANCESTR2D         CITIZEN          YRSUSA1          HCOVANY     
 Not Reported                  :141487   Min.   :0.0000   Min.   : 0.000   Min.   :1.000  
 German (1990-2000, ACS, PRCS) :  9441   1st Qu.:0.0000   1st Qu.: 0.000   1st Qu.:2.000  
 Irish                         :  8809   Median :0.0000   Median : 0.000   Median :2.000  
 English                       :  4895   Mean   :0.4793   Mean   : 5.377   Mean   :1.951  
 Italian (1990-2000, ACS, PRCS):  4531   3rd Qu.:0.0000   3rd Qu.: 0.000   3rd Qu.:2.000  
 Polish                        :  3113   Max.   :3.0000   Max.   :92.000   Max.   :2.000  
 (Other)                       : 24309                                                    
    HCOVPRIV         SEX            EMPSTAT         EMPSTATD        LABFORCE          OCC        
 Min.   :1.000   Male  : 95222   Min.   :0.000   Min.   : 0.00   Min.   :0.000   0      : 79987  
 1st Qu.:1.000   Female:101363   1st Qu.:1.000   1st Qu.:10.00   1st Qu.:1.000   2310   :  3494  
 Median :2.000                   Median :1.000   Median :10.00   Median :2.000   5700   :  3235  
 Mean   :1.691                   Mean   :1.514   Mean   :15.16   Mean   :1.331   430    :  3025  
 3rd Qu.:2.000                   3rd Qu.:3.000   3rd Qu.:30.00   3rd Qu.:2.000   4720   :  2666  
 Max.   :2.000                   Max.   :3.000   Max.   :30.00   Max.   :2.000   4760   :  2563  
                                                                                 (Other):101615  
      IND           CLASSWKR       CLASSWKRD        WKSWORK2        UHRSWORK         INCTOT       
 0      :79987   Min.   :0.000   Min.   : 0.00   Min.   :0.000   Min.   : 0.00   Min.   :  -7300  
 7860   : 9025   1st Qu.:0.000   1st Qu.: 0.00   1st Qu.:0.000   1st Qu.: 0.00   1st Qu.:   8000  
 8680   : 6354   Median :2.000   Median :22.00   Median :1.000   Median :12.00   Median :  25000  
 770    : 6279   Mean   :1.116   Mean   :13.03   Mean   :2.701   Mean   :19.77   Mean   :  45245  
 8190   : 5873   3rd Qu.:2.000   3rd Qu.:22.00   3rd Qu.:6.000   3rd Qu.:40.00   3rd Qu.:  56500  
 7870   : 4041   Max.   :2.000   Max.   :29.00   Max.   :6.000   Max.   :99.00   Max.   :1563000  
 (Other):85026                                                                   NA's   :31129
FTOTINC           INCWAGE          POVERTY         MIGRATE1       MIGRATE1D    
 Min.   : -11800   Min.   :     0   Min.   :  0.0   Min.   :0.000   Min.   : 0.00  
 1st Qu.:  35550   1st Qu.:     0   1st Qu.:159.0   1st Qu.:1.000   1st Qu.:10.00  
 Median :  74000   Median : 10000   Median :351.0   Median :1.000   Median :10.00  
 Mean   : 107110   Mean   : 33796   Mean   :318.7   Mean   :1.122   Mean   :11.51  
 3rd Qu.: 132438   3rd Qu.: 47000   3rd Qu.:501.0   3rd Qu.:1.000   3rd Qu.:10.00  
 Max.   :2030000   Max.   :638000   Max.   :501.0   Max.   :4.000   Max.   :40.00  
 NA's   :10817     NA's   :33427                                                   
    MIGPLAC1         MIGCOUNTY1         MIGPUMA1        VETSTAT          VETSTATD     
 Min.   :  0.000   Min.   :  0.000   Min.   :    0   Min.   :0.0000   Min.   : 0.000  
 1st Qu.:  0.000   1st Qu.:  0.000   1st Qu.:    0   1st Qu.:1.0000   1st Qu.:11.000  
 Median :  0.000   Median :  0.000   Median :    0   Median :1.0000   Median :11.000  
 Mean   :  6.184   Mean   :  4.117   Mean   :  277   Mean   :0.8621   Mean   : 9.412  
 3rd Qu.:  0.000   3rd Qu.:  0.000   3rd Qu.:    0   3rd Qu.:1.0000   3rd Qu.:11.000  
 Max.   :900.000   Max.   :810.000   Max.   :70100   Max.   :2.0000   Max.   :20.000  
                                                                                      
    PWPUMA00        TRANWORK         TRANTIME         DEPARTS           in_NYC      
 Min.   :    0   Min.   : 0.000   Min.   :  0.00   Min.   :   0.0   Min.   :0.0000  
 1st Qu.:    0   1st Qu.: 0.000   1st Qu.:  0.00   1st Qu.:   0.0   1st Qu.:0.0000  
 Median :    0   Median : 0.000   Median :  0.00   Median :   0.0   Median :0.0000  
 Mean   : 1255   Mean   : 9.725   Mean   : 14.75   Mean   : 373.3   Mean   :0.3615  
 3rd Qu.: 3100   3rd Qu.:10.000   3rd Qu.: 20.00   3rd Qu.: 732.0   3rd Qu.:1.0000  
 Max.   :59300   Max.   :70.000   Max.   :138.00   Max.   :2345.0   Max.   :1.0000  
                                                                                    
    in_Bronx       in_Manhattan       in_StatenI       in_Brooklyn      in_Queens     
 Min.   :0.0000   Min.   :0.00000   Min.   :0.00000   Min.   :0.000   Min.   :0.0000  
 1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.000   1st Qu.:0.0000  
 Median :0.0000   Median :0.00000   Median :0.00000   Median :0.000   Median :0.0000  
 Mean   :0.0538   Mean   :0.04981   Mean   :0.02084   Mean   :0.126   Mean   :0.1111  
 3rd Qu.:0.0000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.000   3rd Qu.:0.0000  
 Max.   :1.0000   Max.   :1.00000   Max.   :1.00000   Max.   :1.000   Max.   :1.0000  
                                                                                      
 in_Westchester      in_Nassau          Hispanic         Hisp_Mex          Hisp_PR      
 Min.   :0.00000   Min.   :0.00000   Min.   :0.0000   Min.   :0.00000   Min.   :0.0000  
 1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:0.0000  
 Median :0.00000   Median :0.00000   Median :0.0000   Median :0.00000   Median :0.0000  
 Mean   :0.04413   Mean   :0.07032   Mean   :0.1387   Mean   :0.01626   Mean   :0.0436  
 3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.0000   3rd Qu.:0.00000   3rd Qu.:0.0000  
 Max.   :1.00000   Max.   :1.00000   Max.   :1.0000   Max.   :1.00000   Max.   :1.0000  
                                                                                        
   Hisp_Cuban         Hisp_DomR           white             AfAm          Amindian       
 Min.   :0.000000   Min.   :0.00000   Min.   :0.0000   Min.   :0.000   Min.   :0.000000  
 1st Qu.:0.000000   1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.000   1st Qu.:0.000000  
 Median :0.000000   Median :0.00000   Median :1.0000   Median :0.000   Median :0.000000  
 Mean   :0.003403   Mean   :0.02827   Mean   :0.6997   Mean   :0.125   Mean   :0.003779  
 3rd Qu.:0.000000   3rd Qu.:0.00000   3rd Qu.:1.0000   3rd Qu.:0.000   3rd Qu.:0.000000  
 Max.   :1.000000   Max.   :1.00000   Max.   :1.0000   Max.   :1.000   Max.   :1.000000  
                                                                                         
     Asian            race_oth        unmarried       veteran        has_AnyHealthIns
 Min.   :0.00000   Min.   :0.0000   Min.   :0.00   Min.   :0.00000   Min.   :0.0000  
 1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.00   1st Qu.:0.00000   1st Qu.:1.0000  
 Median :0.00000   Median :0.0000   Median :0.00   Median :0.00000   Median :1.0000  
 Mean   :0.08656   Mean   :0.1324   Mean   :0.45   Mean   :0.04443   Mean   :0.9513  
 3rd Qu.:0.00000   3rd Qu.:0.0000   3rd Qu.:1.00   3rd Qu.:0.00000   3rd Qu.:1.0000  
 Max.   :1.00000   Max.   :1.0000   Max.   :1.00   Max.   :1.00000   Max.   :1.0000  
                                                                                     
 has_PvtHealthIns  Commute_car      Commute_bus      Commute_subway     Commute_rail    
 Min.   :0.0000   Min.   :0.0000   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000  
 1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000  
 Median :1.0000   Median :0.0000   Median :0.00000   Median :0.00000   Median :0.00000  
 Mean   :0.6906   Mean   :0.2997   Mean   :0.02162   Mean   :0.07468   Mean   :0.01332  
 3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000  
 Max.   :1.0000   Max.   :1.0000   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000  
                                                                                        
 Commute_other     below_povertyline below_150poverty below_200poverty   foodstamps    
 Min.   :0.00000   Min.   :0.000     Min.   :0.0000   Min.   :0.0000   Min.   :0.0000  
 1st Qu.:0.00000   1st Qu.:0.000     1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
 Median :0.00000   Median :0.000     Median :0.0000   Median :0.0000   Median :0.0000  
 Mean   :0.05506   Mean   :0.122     Mean   :0.1965   Mean   :0.2676   Mean   :0.1465  
 3rd Qu.:0.00000   3rd Qu.:0.000     3rd Qu.:0.0000   3rd Qu.:1.0000   3rd Qu.:0.0000  
 Max.   :1.00000   Max.   :1.000     Max.   :1.0000   Max.   :1.0000   Max.   :1.0000

To determine how many people are in the dataset, we can use a command for length:
print(NN_obs <- length(AGE))

[1] 196585

There are 196,585 people present in this dataset!

Simple Stats

To compare the average age of men and women in the dataset we can use a female dummy variable, the comparison being between those who have the variable female = 1, and those who do not (i.e. female = 0 (men)).
In the codes below, females are represented through the variable, [female == 1] and males are represented through the logical not, denoted with the "!" symbol, [!female]. Although we are using a logical not symbol to represent the data for males, we can also use [female == 0]. 

summary(AGE[female == 1])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00   23.00   44.00   42.72   61.00   95.00 

> summary(AGE[!female])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00   21.00   40.00   40.35   59.00   95.00 

We can observe that the average age of women in the dataset is 42.72 while the average age for men is 40.35.  
   
Next, we can calculate and comapare the average age and standard deviation between men and women. 
   
mean(AGE[female == 1])
[1] 42.71629
sd(AGE[female == 1])
[1] 23.72012
mean(AGE[!female])
[1] 40.35398
sd(AGE[!female])
[1] 23.1098


I was interested in comparing the average income between men and women in the dataset and using the commands, "summary(INCWAGE [female == 1])" and "summary(INCWAGE [female == 0])", I discovered that the average male income is twice the amount of the average female income. 

summary(INCWAGE [female == 1])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      0       0    5000   26229   39400  638000   16277 
      
summary(INCWAGE [female == 0])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      0       0   15000   42042   55000  638000   17150 


Noting this difference, I was curious to compare the averages between men and women with various degrees. 
 
> mean(educ_nohs [female == 1])
[1] 0.2573622
> mean(educ_nohs [female == 0])
[1] 0.2854382

> mean(educ_somecoll [female == 1])
[1] 0.1792074
> mean(educ_somecoll [female == 0])
[1] 0.1664216

> mean(educ_college [female == 1])
[1] 0.1595257
> mean(educ_college [female == 0])
[1] 0.153662

> mean(educ_advdeg [female == 1])
[1] 0.1295443
> mean(educ_advdeg [female == 0])
[1] 0.1076852

I find it interesting that despite the averages between men and women who have no high school, some college, college degree and an advanced degree is roughly similar, the average income of the men in the dataset is twicefold the average income of the women in the dataset. 
Perhaps this stems from my personal belief that higher degree equates to higher pay however, I still find it to be a point of interest. 

S&P 500 for 08/03/21 - 09-01-21

Date	Open	High	Low	Close	Adj Close	Volume
1-Sep-21	4,528.80	4,537.11	4,522.02	4,524.09	4,524.09	3,101,830,000
31-Aug-21	4,529.75	4,531.39	4,515.80	4,522.68	4,522.68	3,090,380,000
30-Aug-21	4,513.76	4,537.36	4,513.76	4,528.79	4,528.79	2,557,300,000
27-Aug-21	4,474.10	4,513.33	4,474.10	4,509.37	4,509.37	2,862,360,000
26-Aug-21	4,493.75	4,495.90	4,468.99	4,470.00	4,470.00	2,704,600,000
25-Aug-21	4,490.45	4,501.71	4,485.66	4,496.19	4,496.19	2,554,680,000
24-Aug-21	4,484.40	4,492.81	4,482.28	4,486.23	4,486.23	3,037,770,000
23-Aug-21	4,450.29	4,489.88	4,450.29	4,479.53	4,479.53	2,965,520,000
20-Aug-21	4,410.56	4,444.35	4,406.80	4,441.67	4,441.67	2,867,770,000
19-Aug-21	4,382.44	4,418.61	4,367.73	4,405.80	4,405.80	3,120,840,000
18-Aug-21	4,440.94	4,454.32	4,397.59	4,400.27	4,400.27	2,965,210,000
17-Aug-21	4,462.12	4,462.12	4,417.83	4,448.08	4,448.08	2,884,000,000
16-Aug-21	4,461.65	4,473.26	4,437.66	4,472.94	4,472.94	2,707,170,000
13-Aug-21	4,464.84	4,468.37	4,460.82	4,468.00	4,468.00	2,371,630,000
12-Aug-21	4,446.08	4,461.77	4,435.96	4,460.83	4,460.83	2,543,860,000
11-Aug-21	4,442.18	4,449.44	4,436.42	4,442.41	4,442.41	2,803,060,000
10-Aug-21	4,435.79	4,445.21	4,430.03	4,436.75	4,436.75	3,219,840,000
9-Aug-21	4,437.77	4,439.39	4,424.74	4,432.35	4,432.35	2,779,880,000
6-Aug-21	4,429.07	4,440.82	4,429.07	4,436.52	4,436.52	2,839,970,000
5-Aug-21	4,408.86	4,429.76	4,408.86	4,429.10	4,429.10	2,734,220,000
4-Aug-21	4,415.95	4,416.17	4,400.23	4,402.66	4,402.66	3,382,620,000
3-Aug-21	4,392.74	4,423.79	4,373.00	4,423.15	4,423.15	3,305,340,000

I transferred the data for 08/03/21 - 09-01-21 from Yahoo Finance to an excel sheet and then imported the data into RStudio. 

Then I isolated the date and the adjusted close columns by denoting separate variables and then binding them together.

s_p_date <-S_P_Data_HW_1[, "Date", drop = FALSE] 
s_p_adjc <-S_P_Data_HW_1[, "Adj Close", drop = FALSE]
cbind(s_p_date,s_p_adjc)

 Date Adj Close
1  2021-09-01   4524.09
2  2021-08-31   4522.68
3  2021-08-30   4528.79
4  2021-08-27   4509.37
5  2021-08-26   4470.00
6  2021-08-25   4496.19
7  2021-08-24   4486.23
8  2021-08-23   4479.53
9  2021-08-20   4441.67
10 2021-08-19   4405.80
11 2021-08-18   4400.27
12 2021-08-17   4448.08
13 2021-08-16   4472.94
14 2021-08-13   4468.00
15 2021-08-12   4460.83
16 2021-08-11   4442.41
17 2021-08-10   4436.75
18 2021-08-09   4432.35
19 2021-08-06   4436.52
20 2021-08-05   4429.10
21 2021-08-04   4402.66
22 2021-08-03   4423.15
23 2021-08-02   4387.16

Now we can caluclate the adjusted close value returns.

#We denote n as the adjusted close values. 
n <-nrow(s_p_adjc)
#create a new variable for returns with formula
s_p_return <- log(s_p_adjc[2:n,1])-log(s_p_adjc[1:(n-1),1])

^This function allows us to continuously compound one month returns. 

summary(s_p_return)

Adj Close       
 Min.   :-0.87690  
 1st Qu.:-0.42575  
 Median :-0.13847  
 Mean   :-0.13970  
 3rd Qu.: 0.06273  
 Max.   : 1.08066  

#because the first return is calculated on the second day, we can denote a new variable for clarification since "s_p_date" has 23 entries and "s_p_return" will have 22. 

newdate <- s_p_date[1:22,"Date"]

#bind date and returns
d_r <- cbind.data.frame(newdate,s_p_return)

print(d_r)

Date   Adj Close
1  2021-09-01 -0.03117135
2  2021-08-31  0.13500572
3  2021-08-30 -0.42973415
4  2021-08-27 -0.87690456
5  2021-08-26  0.58419629
6  2021-08-25 -0.22176661
7  2021-08-24 -0.14945752
8  2021-08-23 -0.84876984
9  2021-08-20 -0.81085771
10 2021-08-19 -0.12559520
11 2021-08-18  1.08066397
12 2021-08-17  0.55733681
13 2021-08-16 -0.11050293
14 2021-08-13 -0.16060338
15 2021-08-12 -0.41378254
16 2021-08-11 -0.12748955
17 2021-08-10 -0.09922090
18 2021-08-09  0.09403679
19 2021-08-06 -0.16738822
20 2021-08-05 -0.59874994
21 2021-08-04  0.46432082
22 2021-08-03 -0.81700190

I do want to note that we can also use Microsoft Excel to calculate the rate of return for the adjusted close values (it's faster too!) 

The mean return on the S&P 500 dataset is -0.13970, which we found from summary(s_p_return). 
An example of the mean return on days when the previous day's return was positive can be seen on 2021-08-19, where the return is -0.12559520 and the previous day's return is 1.08066397. 
Interestingly, on 2021-08-17, the return was also positive, 0.55733681. 
"Hot hands fallacy" is a "psychological condition that people believe an individual is "hot" or "cold" depending on past performance". The name says it itself, that the concept is based on mistaken belief and I don't think future outcomes are impacted much by past favorable outcomes. In sports however, where the phrase "hot hands" is more commonly used, 
this may prove to be different. 
