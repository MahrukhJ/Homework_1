load("acs2017_ny_data.RData")
#glimpse(acs2017_ny) try this later
acs2017_ny[1:10,1:7]
attach(acs2017_ny)
summary(acs2017_ny)
print(NN_obs <- length(AGE))
summary(AGE[female == 1])
summary(AGE[!female])
# here i want to find average ages of men and women
mean(AGE[female == 1])
sd(AGE[female == 1])
mean(AGE[!female])
sd(AGE[!female])


1. Names of people in the study group. 

Experiment #1: Initial Roll           Experiment #2: Adjusted Die           Experiment #3: Completely Destroyed Die
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

After much consideration and pondering, I decided that elongating the face of a preferred number might aid in increasing the frequency, and thus probability, of landing on a preferred number. 
In order to acheive expansion, I speculated that ever so slightly melting opposite corners on the face of the 6 would create resistance in turning and thus, prevent the die from rolling onto a different face. 
Experiment #2 details this attempt. 
Melting opposing corners on the face of the 6, doubled the frequency of rolling a 6, compared to the results of Experiment #1.  
Following the results of this experiment, I wondered if melting all 4 corners of a preferred face on the die, will increase the frequency. 
Experiment #3 details this attempt. 

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

