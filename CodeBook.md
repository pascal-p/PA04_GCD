---
title: "Codebook"
date: "July, 2018"
author: Pascal P
output:
  html_document:
    toc: true
    toc_depth: 2
    number_sections: true
    df_print: paged
    highlight: zenburn
    theme: simplex
---

# Original Data
  The original dat set is available from:
  
  - http://archive.ics.uci.edu/ml/data sets/Human+Activity+Recognition+Using+Smartphones and also  
  
  - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
  Once decompressed, explanation about the features and their meaning can be found in the `README.txt`, `features_info.txt` and `features.txt`.  
  For the activity labels, refer to file `activity_labels`.

# Final tidy data set
  This summarizes the variables used in the final tiny data set, called `tidy_data_summary_180x81.txt`.

## Variables
  The final tidy data set is composed of 81 variables, details are as followed.  
  No units per se.
  Remark for range cf. "summary of all variables" below.  
  
  
Variable name    |             Full description              | Range | 
-----------------|-------------------------------------------|-------|
| Subject                     | id of of subject who performed the activities             | [0-30]             |
| Activity                    | name of the activity performed                            | 6 values: WALKING  |
|                             |                                                           | WALKING_UPSTAIRS,  |
|                             |                                                           | WALKING_DOWNSTAIRS |
|                             |                                                           | SITTING, STANDING  |
|                             |                                                           | LAYING             |
| TimeBodyAccMean.X           | time body acceleration mean on X                          | cf. below          |
| TimeBodyAccMean.Y           | time   "       "         "  on Y                          | "    "             |
| TimeBodyAccMean.Z           | time   "       "         "  on Z                          | "    "             |
| TimeBodyAccStd.X            | time body acceleration mean std dev on X                  | "    "             |
| TimeBodyAccStd.Y            | time   "       "         "   "   "  on Y                  | "    "             |
| TimeBodyAccStd.Z            | time   "       "         "   "   "  on Z                  | "    "             |
| TimeGravityAccMean.X        | time gravity acceleration mean on X                       | "    "             |
| TimeGravityAccMean.Y        | time    "         "         "  on Y                       | "    "             |
| TimeGravityAccMean.Z        | time    "         "         "  on Z                       | "    "             |
| TimeGravityAccStd.X         | time gravity acceleration mean std dev on X               | "    "             |
| TimeGravityAccStd.Y         | time    "         "         "   "   " on Y                | "    "             |
| TimeGravityAccStd.Z         | time    "         "         "   "   " on Z                | "    "             |
| TimeBodyAccJerkMean.X       | time body acceleration jerk mean on X                     | "    "             |
| TimeBodyAccJerkMean.Y       | time   "       "         "    "  on Y                     | "    "             |
| TimeBodyAccJerkMean.Z       | time   "       "         "    "  on Z                     | "    "             |
| TimeBodyAccJerkStd.X        | time body acceleration jerk mean std dev on X             | "    "             |
| TimeBodyAccJerkStd.Y        | time   "       "         "    "   "   "  on Y             | "    "             |
| TimeBodyAccJerkStd.Z        | time   "       "         "    "   "   "  on Z             | "    "             |
| TimeBodyGyroMean.X          | time body gyroscope mean on X                             | "    "             |
| TimeBodyGyroMean.Y          | time   "      "       "  on Y                             | "    "             |
| TimeBodyGyroMean.Z          | time   "      "       "  on Z                             | "    "             |
| TimeBodyGyroStd.X           | time body gyroscope mean std dev on X                     | "    "             |
| TimeBodyGyroStd.Y           | time   "      "       "   "   "  on Y                     | "    "             |
| TimeBodyGyroStd.Z           | time   "      "       "   "   "  on Y                     | "    "             |
| TimeBodyGyroJerkMean.X      | time body gyroscope jerk mean on X                        | "    "             |
| TimeBodyGyroJerkMean.Y      | time   "      "       "   "   on Y                        | "    "             |
| TimeBodyGyroJerkMean.Z      | time   "      "       "   "   on Z                        | "    "             |
| TimeBodyGyroJerkStd.X       | time body gyroscope jerk mean std  on X                   | "    "             |
| TimeBodyGyroJerkStd.Y       | time   "      "       "   "    "   on Y                   | "    "             |
| TimeBodyGyroJerkStd.Z       | time   "      "       "   "    "   on Z                   | "    "             |
| TimeBodyAccMagMean          | time body acceleration magnitude mean                     | "    "             |
| TimeBodyAccMagStd           | time body acceleration magnitude mean std dev             | "    "             |
| TimeGravityAccMagMean       | time gravity acceleration magnitude mean                  | "    "             |
| TimeGravityAccMagStd        | time gravity acceleration magnitude mean std dev          | "    "             |
| TimeBodyAccJerkMagMean      | time body acceleration jerk magnitude mean                | "    "             |
| TimeBodyAccJerkMagStd       | time body acceleration jerk magnitude std dev             | "    "             |
| TimeBodyGyroMagMean         | time body gyroscope magnitude mean                        | "    "             |
| TimeBodyGyroMagStd          | time body gyroscope magnitude mean std dev                | "    "             |
| TimeBodyGyroJerkMagMean     | time body gyroscope jerk magnitude mean                   | "    "             |
| TimeBodyGyroJerkMagStd      | time body gyroscope jerk magnitude mean std dev           | "    "             |
|                             |                                                           |                    |
| FreqBodyAccMean.X           | frequence body acceleration mean on X                     | "    "             |
| FreqBodyAccMean.Y           | frequence   "       "         "  on Y                     | "    "             |
| FreqBodyAccMean.Z           | frequence   "       "         "  on Z                     | "    "             |
| FreqBodyAccStd.X            | frequence body acceleration mean std dev on X             | "    "             |
| FreqBodyAccStd.Y            | frequence   "       "         "   "   "  on Y             | "    "             |
| FreqBodyAccStd.Z            | frequence   "       "         "   "   " on Z              | "    "             |
| FreqBodyAccMeanFreq.X       | frequence gravity acceleration mean on X                  | "    "             |
| FreqBodyAccMeanFreq.Y       | frequence    "         "         "  on Y                  | "    "             |
| FreqBodyAccMeanFreq.Z       | frequence    "         "         "  on Z                  | "    "             |
| FreqBodyAccJerkMean.X       | frequence gravity acceleration mean std dev on X          | "    "             |
| FreqBodyAccJerkMean.Y       | frequence    "         "         "   "   " on Y           | "    "             |
| FreqBodyAccJerkMean.Z       | frequence    "         "         "   "   " on Z           | "    "             |
| FreqBodyAccJerkStd.X        | frequence body acceleration jerk mean on X                | "    "             |
| FreqBodyAccJerkStd.Y        | frequence   "       "         "    "  on Y                | "    "             |
| FreqBodyAccJerkStd.Z        | frequence   "       "         "    "  on Z                | "    "             |
| FreqBodyAccJerkMeanFreq.X   | frequence body acceleration jerk mean frequence on X      | "    "             |
| FreqBodyAccJerkMeanFreq.Y   |                                                           |                    |
| FreqBodyAccJerkMeanFreq.Z   |                                                           |                    |
| FreqBodyGyroMean.X          | frequence body gyroscope mean on X                        | "    "             |
| FreqBodyGyroMean.Y          | frequence   "      "       "  on Y                        | "    "             |
| FreqBodyGyroMean.Z          | frequence   "      "       "  on Y=Z                      | "    "             |
| FreqBodyGyroStd.X           | frequence body gyroscope mean std dev on X                | "    "             |
| FreqBodyGyroStd.Y           |     "       "      "       "   "   "  on Y                | "    "             |
| FreqBodyGyroStd.Z           |     "       "      "       "   "   "  on Z                | "    "             |
| FreqBodyGyroMeanFreq.X      | frequence body gyroscope mean frequence on X              | "    "             |
| FreqBodyGyroMeanFreq.Y      |     "       "      "       "      "     on Y              | "    "             |
| FreqBodyGyroMeanFreq.Z      |     "       "      "       "      "     on Z              | "    "             |
| FreqBodyAccMagMean          | frequence body acceleration magnitude mean                | "    "             |
| FreqBodyAccMagStd           | frequence body acceleration magnitude std dev             | "    "             |
| FreqBodyAccMagMeanFreq      | frequence body acceleration magnitude mean frequence      | "    "             |
| FreqBodyAccJerkMagMean      | frequence body acceleration jerk magnitude mean           | "    "             |
| FreqBodyAccJerkMagStd       | frequence body acceleration jerk magnitude std dev        | "    "             |
| FreqBodyAccJerkMagMeanFreq  | frequence body acceleration jerk magnitude mean frequence | "    "             |
| FreqBodyGyroMagMean         | frequence body gyroscope magnitude mean                   | "    "             |
| FreqBodyGyroMagStd          | frequence body gyroscope magnitude std dev                | "    "             |
| FreqBodyGyroMagMeanFreq     | frequence body gyroscope magnitude mean frequence         | "    "             |
| FreqBodyGyroJerkMagMean     | frequence body gyroscope jerk magnitude mean              | "    "             |
| FreqBodyGyroJerkMagStd      | frequence body gyroscope jerk magnitude std dev           | "    "             |
| FreqBodyGyroJerkMagMeanFreq | frequence body gyroscope jerk magnitude mean frequence    | "    "             |
|                             |                                                           |                  

## Summary of all the variables

```r

summary(mytab)

    Subject       Activity         TimeBodyAccMean.X TimeBodyAccMean.Y   TimeBodyAccMean.Z 
 Min.   : 1.0   Length:180         Min.   :0.2216    Min.   :-0.040514   Min.   :-0.15251  
 1st Qu.: 8.0   Class :character   1st Qu.:0.2712    1st Qu.:-0.020022   1st Qu.:-0.11207  
 Median :15.5   Mode  :character   Median :0.2770    Median :-0.017262   Median :-0.10819  
 Mean   :15.5                      Mean   :0.2743    Mean   :-0.017876   Mean   :-0.10916  
 3rd Qu.:23.0                      3rd Qu.:0.2800    3rd Qu.:-0.014936   3rd Qu.:-0.10443  
 Max.   :30.0                      Max.   :0.3015    Max.   :-0.001308   Max.   :-0.07538  
 
 TimeBodyAccStd.X  TimeBodyAccStd.Y   TimeBodyAccStd.Z  TimeGravityAccMean.X TimeGravityAccMean.Y
 Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.6800      Min.   :-0.47989    
 1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498   1st Qu.: 0.8376      1st Qu.:-0.23319    
 Median :-0.7526   Median :-0.50897   Median :-0.6518   Median : 0.9208      Median :-0.12782    
 Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756   Mean   : 0.6975      Mean   :-0.01621    
 3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306   3rd Qu.: 0.9425      3rd Qu.: 0.08773    
 Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090   Max.   : 0.9745      Max.   : 0.95659    
 
 TimeGravityAccMean.Z TimeGravityAccStd.X TimeGravityAccStd.Y TimeGravityAccStd.Z
 Min.   :-0.49509     Min.   :-0.9968     Min.   :-0.9942     Min.   :-0.9910    
 1st Qu.:-0.11726     1st Qu.:-0.9825     1st Qu.:-0.9711     1st Qu.:-0.9605    
 Median : 0.02384     Median :-0.9695     Median :-0.9590     Median :-0.9450    
 Mean   : 0.07413     Mean   :-0.9638     Mean   :-0.9524     Mean   :-0.9364    
 3rd Qu.: 0.14946     3rd Qu.:-0.9509     3rd Qu.:-0.9370     3rd Qu.:-0.9180    
 Max.   : 0.95787     Max.   :-0.8296     Max.   :-0.6436     Max.   :-0.6102    
 
 TimeBodyAccJerkMean.X TimeBodyAccJerkMean.Y TimeBodyAccJerkMean.Z TimeBodyAccJerkStd.X
 Min.   :0.04269       Min.   :-0.0386872    Min.   :-0.067458     Min.   :-0.9946     
 1st Qu.:0.07396       1st Qu.: 0.0004664    1st Qu.:-0.010601     1st Qu.:-0.9832     
 Median :0.07640       Median : 0.0094698    Median :-0.003861     Median :-0.8104     
 Mean   :0.07947       Mean   : 0.0075652    Mean   :-0.004953     Mean   :-0.5949     
 3rd Qu.:0.08330       3rd Qu.: 0.0134008    3rd Qu.: 0.001958     3rd Qu.:-0.2233     
 Max.   :0.13019       Max.   : 0.0568186    Max.   : 0.038053     Max.   : 0.5443     
 
 TimeBodyAccJerkStd.Y TimeBodyAccJerkStd.Z TimeBodyGyroMean.X TimeBodyGyroMean.Y TimeBodyGyroMean.Z
 Min.   :-0.9895      Min.   :-0.99329     Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245  
 1st Qu.:-0.9724      1st Qu.:-0.98266     1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475  
 Median :-0.7756      Median :-0.88366     Median :-0.02871   Median :-0.07318   Median : 0.08512  
 Mean   :-0.5654      Mean   :-0.73596     Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744  
 3rd Qu.:-0.1483      3rd Qu.:-0.51212     3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177  
 Max.   : 0.3553      Max.   : 0.03102     Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910  
 
 TimeBodyGyroStd.X TimeBodyGyroStd.Y TimeBodyGyroStd.Z TimeBodyGyroJerkMean.X TimeBodyGyroJerkMean.Y
 Min.   :-0.9943   Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721       Min.   :-0.07681      
 1st Qu.:-0.9735   1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322       1st Qu.:-0.04552      
 Median :-0.7890   Median :-0.8017   Median :-0.8010   Median :-0.09868       Median :-0.04112      
 Mean   :-0.6916   Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606       Mean   :-0.04269      
 3rd Qu.:-0.4414   3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110       3rd Qu.:-0.03842      
 Max.   : 0.2677   Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209       Max.   :-0.01320      
 
 TimeBodyGyroJerkMean.Z TimeBodyGyroJerkStd.X TimeBodyGyroJerkStd.Y TimeBodyGyroJerkStd.Z
 Min.   :-0.092500      Min.   :-0.9965       Min.   :-0.9971       Min.   :-0.9954      
 1st Qu.:-0.061725      1st Qu.:-0.9800       1st Qu.:-0.9832       1st Qu.:-0.9848      
 Median :-0.053430      Median :-0.8396       Median :-0.8942       Median :-0.8610      
 Mean   :-0.054802      Mean   :-0.7036       Mean   :-0.7636       Mean   :-0.7096      
 3rd Qu.:-0.048985      3rd Qu.:-0.4629       3rd Qu.:-0.5861       3rd Qu.:-0.4741      
 Max.   :-0.006941      Max.   : 0.1791       Max.   : 0.2959       Max.   : 0.1932      
 
 TimeBodyAccMagMean TimeBodyAccMagStd TimeGravityAccMagMean TimeGravityAccMagStd
 Min.   :-0.9865    Min.   :-0.9865   Min.   :-0.9865       Min.   :-0.9865     
 1st Qu.:-0.9573    1st Qu.:-0.9430   1st Qu.:-0.9573       1st Qu.:-0.9430     
 Median :-0.4829    Median :-0.6074   Median :-0.4829       Median :-0.6074     
 Mean   :-0.4973    Mean   :-0.5439   Mean   :-0.4973       Mean   :-0.5439     
 3rd Qu.:-0.0919    3rd Qu.:-0.2090   3rd Qu.:-0.0919       3rd Qu.:-0.2090     
 Max.   : 0.6446    Max.   : 0.4284   Max.   : 0.6446       Max.   : 0.4284     
 
 TimeBodyAccJerkMagMean TimeBodyAccJerkMagStd TimeBodyGyroMagMean TimeBodyGyroMagStd
 Min.   :-0.9928        Min.   :-0.9946       Min.   :-0.9807     Min.   :-0.9814   
 1st Qu.:-0.9807        1st Qu.:-0.9765       1st Qu.:-0.9461     1st Qu.:-0.9476   
 Median :-0.8168        Median :-0.8014       Median :-0.6551     Median :-0.7420   
 Mean   :-0.6079        Mean   :-0.5842       Mean   :-0.5652     Mean   :-0.6304   
 3rd Qu.:-0.2456        3rd Qu.:-0.2173       3rd Qu.:-0.2159     3rd Qu.:-0.3602   
 Max.   : 0.4345        Max.   : 0.4506       Max.   : 0.4180     Max.   : 0.3000   
 
 TimeBodyGyroJerkMagMean TimeBodyGyroJerkMagStd FreqBodyAccMean.X FreqBodyAccMean.Y  FreqBodyAccMean.Z
 Min.   :-0.99732        Min.   :-0.9977        Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895  
 1st Qu.:-0.98515        1st Qu.:-0.9805        1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619  
 Median :-0.86479        Median :-0.8809        Median :-0.7691   Median :-0.59498   Median :-0.7236  
 Mean   :-0.73637        Mean   :-0.7550        Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297  
 3rd Qu.:-0.51186        3rd Qu.:-0.5767        3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183  
 Max.   : 0.08758        Max.   : 0.2502        Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807  
 
 FreqBodyAccStd.X  FreqBodyAccStd.Y   FreqBodyAccStd.Z  FreqBodyAccMeanFreq.X FreqBodyAccMeanFreq.Y
 Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.63591      Min.   :-0.379518    
 1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459   1st Qu.:-0.39165      1st Qu.:-0.081314    
 Median :-0.7470   Median :-0.51338   Median :-0.6441   Median :-0.25731      Median : 0.007855    
 Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824   Mean   :-0.23227      Mean   : 0.011529    
 3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655   3rd Qu.:-0.06105      3rd Qu.: 0.086281    
 Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871   Max.   : 0.15912      Max.   : 0.466528    
 
 FreqBodyAccMeanFreq.Z FreqBodyAccJerkMean.X FreqBodyAccJerkMean.Y FreqBodyAccJerkMean.Z
 Min.   :-0.52011      Min.   :-0.9946       Min.   :-0.9894       Min.   :-0.9920      
 1st Qu.:-0.03629      1st Qu.:-0.9828       1st Qu.:-0.9725       1st Qu.:-0.9796      
 Median : 0.06582      Median :-0.8126       Median :-0.7817       Median :-0.8707      
 Mean   : 0.04372      Mean   :-0.6139       Mean   :-0.5882       Mean   :-0.7144      
 3rd Qu.: 0.17542      3rd Qu.:-0.2820       3rd Qu.:-0.1963       3rd Qu.:-0.4697      
 Max.   : 0.40253      Max.   : 0.4743       Max.   : 0.2767       Max.   : 0.1578      
 
 FreqBodyAccJerkStd.X FreqBodyAccJerkStd.Y FreqBodyAccJerkStd.Z FreqBodyAccJerkMeanFreq.X
 Min.   :-0.9951      Min.   :-0.9905      Min.   :-0.993108    Min.   :-0.57604         
 1st Qu.:-0.9847      1st Qu.:-0.9737      1st Qu.:-0.983747    1st Qu.:-0.28966         
 Median :-0.8254      Median :-0.7852      Median :-0.895121    Median :-0.06091         
 Mean   :-0.6121      Mean   :-0.5707      Mean   :-0.756489    Mean   :-0.06910         
 3rd Qu.:-0.2475      3rd Qu.:-0.1685      3rd Qu.:-0.543787    3rd Qu.: 0.17660         
 Max.   : 0.4768      Max.   : 0.3498      Max.   :-0.006236    Max.   : 0.33145         
 
 FreqBodyAccJerkMeanFreq.Y FreqBodyAccJerkMeanFreq.Z FreqBodyGyroMean.X FreqBodyGyroMean.Y
 Min.   :-0.60197          Min.   :-0.62756          Min.   :-0.9931    Min.   :-0.9940   
 1st Qu.:-0.39751          1st Qu.:-0.30867          1st Qu.:-0.9697    1st Qu.:-0.9700   
 Median :-0.23209          Median :-0.09187          Median :-0.7300    Median :-0.8141   
 Mean   :-0.22810          Mean   :-0.13760          Mean   :-0.6367    Mean   :-0.6767   
 3rd Qu.:-0.04721          3rd Qu.: 0.03858          3rd Qu.:-0.3387    3rd Qu.:-0.4458   
 Max.   : 0.19568          Max.   : 0.23011          Max.   : 0.4750    Max.   : 0.3288   
 
 FreqBodyGyroMean.Z FreqBodyGyroStd.X FreqBodyGyroStd.Y FreqBodyGyroStd.Z FreqBodyGyroMeanFreq.X
 Min.   :-0.9860    Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867   Min.   :-0.395770     
 1st Qu.:-0.9624    1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643   1st Qu.:-0.213363     
 Median :-0.7909    Median :-0.8086   Median :-0.7964   Median :-0.8224   Median :-0.115527     
 Mean   :-0.6044    Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577   Mean   :-0.104551     
 3rd Qu.:-0.2635    3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916   3rd Qu.: 0.002655     
 Max.   : 0.4924    Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225   Max.   : 0.249209     
 
 FreqBodyGyroMeanFreq.Y FreqBodyGyroMeanFreq.Z FreqBodyAccMagMean FreqBodyAccMagStd
 Min.   :-0.66681       Min.   :-0.50749       Min.   :-0.9868    Min.   :-0.9876  
 1st Qu.:-0.29433       1st Qu.:-0.15481       1st Qu.:-0.9560    1st Qu.:-0.9452  
 Median :-0.15794       Median :-0.05081       Median :-0.6703    Median :-0.6513  
 Mean   :-0.16741       Mean   :-0.05718       Mean   :-0.5365    Mean   :-0.6210  
 3rd Qu.:-0.04269       3rd Qu.: 0.04152       3rd Qu.:-0.1622    3rd Qu.:-0.3654  
 Max.   : 0.27314       Max.   : 0.37707       Max.   : 0.5866    Max.   : 0.1787  
 
 FreqBodyAccMagMeanFreq FreqBodyAccJerkMagMean FreqBodyAccJerkMagStd FreqBodyAccJerkMagMeanFreq
 Min.   :-0.31234       Min.   :-0.9940        Min.   :-0.9944       Min.   :-0.12521          
 1st Qu.:-0.01475       1st Qu.:-0.9770        1st Qu.:-0.9752       1st Qu.: 0.04527          
 Median : 0.08132       Median :-0.7940        Median :-0.8126       Median : 0.17198          
 Mean   : 0.07613       Mean   :-0.5756        Mean   :-0.5992       Mean   : 0.16255          
 3rd Qu.: 0.17436       3rd Qu.:-0.1872        3rd Qu.:-0.2668       3rd Qu.: 0.27593          
 Max.   : 0.43585       Max.   : 0.5384        Max.   : 0.3163       Max.   : 0.48809          
 
 FreqBodyGyroMagMean FreqBodyGyroMagStd FreqBodyGyroMagMeanFreq FreqBodyGyroJerkMagMean
 Min.   :-0.9865     Min.   :-0.9815    Min.   :-0.45664        Min.   :-0.9976        
 1st Qu.:-0.9616     1st Qu.:-0.9488    1st Qu.:-0.16951        1st Qu.:-0.9813        
 Median :-0.7657     Median :-0.7727    Median :-0.05352        Median :-0.8779        
 Mean   :-0.6671     Mean   :-0.6723    Mean   :-0.03603        Mean   :-0.7564        
 3rd Qu.:-0.4087     3rd Qu.:-0.4277    3rd Qu.: 0.08228        3rd Qu.:-0.5831        
 Max.   : 0.2040     Max.   : 0.2367    Max.   : 0.40952        Max.   : 0.1466        
 
 FreqBodyGyroJerkMagStd FreqBodyGyroJerkMagMeanFreq
 Min.   :-0.9976        Min.   :-0.18292           
 1st Qu.:-0.9802        1st Qu.: 0.05423           
 Median :-0.8941        Median : 0.11156           
 Mean   :-0.7715        Mean   : 0.12592           
 3rd Qu.:-0.6081        3rd Qu.: 0.20805           
 Max.   : 0.2878        Max.   : 0.42630  
```

# Data Transformation

  This part explains the 5 step process I followed to obtain the final tidy data set.  
  The R code for this is available in script file `run_analysis.R`

  **Remarks**:  
  
  - Opted to load only the required files per step (instead of pre-loading everything). So it is not until step 3 that I have everything. This is by no mean mandatory.   
  - Spelling for data set is also (sometimes) dataset.  
  - A data set is represented by a data frame, I tend to use these two terms interchangeably.  

## Loading and merging training and test data sets
  The following steps were followed to obtain the consolidated data frame in memory.
  
  - Put the data into a subdirectory called `data/UCI_HAR_Dataset`
  - Noticed that in the X files, numbers were separated by space.
  - Checked the following files ignoring sub directory `Inertial Signals/` (for each set) and determined their dimensions (denoted by [nrows x ncols]):  
  
  `test/`  
    - `subject_test.txt [2947 x   1]`  
    - `X_test.txt       [2947 x 561]`  
    - `y_test.txt       [2947 x   1]`   
  `train/`  
    - `subject_train.txt [7352 x   1]`   
    - `X_train.txt       [7352 x 561]`  
    - `y_train.txt       [7352 x   1]`    
  
  - To find out these dimensions I ran the pipeline Unix command (based on default separator space):  
```
  awk '{print NF}' data/UCI_HAR_Dataset/test/X_test.txt | sort | uniq -c
  2947 561
```
  This tells us that all 2947 lines have 561 columns. Ran the same command on all the files mentionned above.
  This is not strictly necessary, but I wanted to understand a bit more the data before starting anything with R.
  Running A GNU/Linux system, which as any Unix flavor was designed to work with text file makes it really handy.

  - Loading all the train files and merge (or consolidate, using cbind function) them together, gives a dataframe with dimension `7352 x 563`   
  Remark: the 2 additional columns ("Subject" and "Activity") were prepended to the dataframe (therefore located at indexes 1 and 2). 
  
  - Loading all the test files and merge (or consolidate, using cbind function them together, gives a dataframe with dimension `2947 x 563`  
  Same remark as above for the 2 additional columns.

  - Merging or consolidating the two dataframes (using rbind function) gives a dataframe with dimension `10299 x 563`
  
  **Summary of R code for this part**  
  
  - load data set with function `read.table`, using separator set to `""`  
  - use `cbind` to combine all columns together for test and for training sets  
  - use `rbind` to combine the two dataframe into one  
  
  **Remark**: For details on how to load and merge these files, cf. `R` script `run_analysis.R`, in particular:  
    functions: `performStep1` which calls: `loadFile`, `loadAndCombineDS` and `combineDS`


## Extract only mean and standard deviation measurement 
  The following steps were followed to obtain the data frame restricted to the specific columns (as per requirement).  
  
  - Read the features from file `data/UCI_HAR_Dataset/features.txt`- dimension `561 x 1`
  
  - Extract from features those whose names are matching `-mean()`, `-meanFreq()` or `-std()`, using `grep` function and a regular expression (`"-(mean.*|std)\\(\\)"`). *Please note this is my relative interpretation*.  
  This produces a vector of indexes.  
  Remark: The possible range of indexes in the vector is `[1, 561]`
  
  - All indexes in the result vector need to be offset-ed by 2, in order to be applied onto our consolidated dataframe (with `563` columns) as we want to keep the two firat columns ("Subject" and "Activity").
  
  - Finally we select the target column from dataframe (given all the indexes), using `sapply` function, this gives a new dataframe of dimension `10299 x 81`  
  
  **Remark**: For details on how to select mean and standard deviation columns, cf. `R` script `run_analysis.R`, in particular:  
    functions: `performStep2` which calls: `loadLabels`, `filterFeatures` and `applyFilterDS`

  
## Use descriptive activity names
  Column number 2 (Activity) of our current data set is a numeric column with integer values from 1 to 6. 
  The aim here is to replace these indexes with the strings from the activity labels.  
  
  - After loading the activity labels into memory, I opted to meta-function `sapply` to mutate the column number 2.  

  **Remark**: For details on how to achieve this step, cf. `R` script `run_analysis.R`, in particular:  
    functions: `performStep3` which calls: `setActivityName`


## Label the data with descriptive variables names
  In this step, the aim is to tidy up the variable names.  
  
  - First, replace all the columns names (up to now labelled with V1.1, ..V2, V3, ...) with the names provided in `features.txt` loaded in step 2. 
  Also named the first (left) columns: Subject and Activity (in this order).
  
  - Tidy up the column names removing characters such as `-`, `_`, `(`, `)`... expand and capitalize where appropriate.  
  so for example names starting with 't' are expanded to 'time' ('f' to 'freq').
  
  **Remark**: For details on how to achieve this step, cf. `R` script `run_analysis.R`, in particular:  
    functions: `performStep4` which calls: `setLabelOnDS` and `cleanLabelsForDS`.  
   
   
## Second independent tidy data set with average of each variable
  In this part, the aim is to create a second data set. For this part I opted for the package `dplyr`

  - Load the `dplyr` package and convert current data frame in data table
  
  - Then apply a pipeline grouping by Subject and Activity prior to summarize on the given groups
  
  - Write resulting table into file `tidy_data_summary_180x81.txt`, the name here explicits the final dimensions
  
  **Remark**: For details on how to achieve this step, cf. `R` script `run_analysis.R`, in particular:  
    functions: `performStep5` which calls: `summarizeData` 
    
    
# About `r` script `run_analysis.R` and the result data file

## How to run it?
  - Assuming you have :
    - a working directory were you have downloaded / cloned the `R` script `run_analysis.R`
    - downloaded and uncompressed data set (cf. paragraph "Original Data" above) into a sub directory `data/` and renamed the resulting sub-directory (from `UCI HAR Dataset`) to `UCI_HAR_Dataset`.  
  
  - Launch r-studio, go to your working directory.  
  
  - Execute: 
```r
rm(list=ls())
source("run_analysis.R")
```
  
  - Console output (for reference):
```r
[1] "1 - Loading and combining all files to single dataset"
[1] "dim dataset: 10299x563"
[1] "2a - Load the features"
[1] "dim dataset: 561x1"
[1] "2b - Get the subset Mean/Std and keep 2 first columns"
[1] "dim dataset: 10299x81"
[1] "3 - Replace 2nd column with activity names (lowercase them)"
[1] "dim dataset: 10299x81"
[1] "4 - Name the columns of dataset (in order) and tidy them up"
[1] "dim dataset: 10299x81"
[1] "5 - Create a second, independent tidy data"
[1] "dim dataset: 180x81"
```

  - Result file `tidy_data_summary_180x81.txt` should be available. **Please note, this text file is semi-column separated**
  
## Some details about file `tidy_data_summary_180x81.txt`
```r
> str(mytab)
Classes ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame':	180 obs. of  81 variables:
 $ Subject                    : int  1 1 1 1 1 1 2 2 2 2 ...
 $ Activity                   : chr  "laying" "sitting" "standing" "walking" ...
 $ TimeBodyAccMean.X          : num  0.222 0.261 0.279 0.277 0.289 ...
 $ TimeBodyAccMean.Y          : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ TimeBodyAccMean.Z          : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ TimeBodyAccStd.X           : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ TimeBodyAccStd.Y           : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ TimeBodyAccStd.Z           : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ TimeGravityAccMean.X       : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ TimeGravityAccMean.Y       : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ TimeGravityAccMean.Z       : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ TimeGravityAccStd.X        : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 $ TimeGravityAccStd.Y        : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 $ TimeGravityAccStd.Z        : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 $ TimeBodyAccJerkMean.X      : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 $ TimeBodyAccJerkMean.Y      : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 $ TimeBodyAccJerkMean.Z      : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 $ TimeBodyAccJerkStd.X       : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 $ TimeBodyAccJerkStd.Y       : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 $ TimeBodyAccJerkStd.Z       : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 $ TimeBodyGyroMean.X         : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 $ TimeBodyGyroMean.Y         : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 $ TimeBodyGyroMean.Z         : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 $ TimeBodyGyroStd.X          : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 $ TimeBodyGyroStd.Y          : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 $ TimeBodyGyroStd.Z          : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 $ TimeBodyGyroJerkMean.X     : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 $ TimeBodyGyroJerkMean.Y     : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 $ TimeBodyGyroJerkMean.Z     : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 $ TimeBodyGyroJerkStd.X      : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 $ TimeBodyGyroJerkStd.Y      : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 $ TimeBodyGyroJerkStd.Z      : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 $ TimeBodyAccMagMean         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ TimeBodyAccMagStd          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ TimeGravityAccMagMean      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ TimeGravityAccMagStd       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ TimeBodyAccJerkMagMean     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ TimeBodyAccJerkMagStd      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ TimeBodyGyroMagMean        : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ TimeBodyGyroMagStd         : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ TimeBodyGyroJerkMagMean    : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ TimeBodyGyroJerkMagStd     : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ FreqBodyAccMean.X          : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 $ FreqBodyAccMean.Y          : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 $ FreqBodyAccMean.Z          : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 $ FreqBodyAccStd.X           : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 $ FreqBodyAccStd.Y           : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 $ FreqBodyAccStd.Z           : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 $ FreqBodyAccMeanFreq.X      : num  -0.1588 -0.0495 0.0865 -0.2075 -0.3074 ...
 $ FreqBodyAccMeanFreq.Y      : num  0.0975 0.0759 0.1175 0.1131 0.0632 ...
 $ FreqBodyAccMeanFreq.Z      : num  0.0894 0.2388 0.2449 0.0497 0.2943 ...
 $ FreqBodyAccJerkMean.X      : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 $ FreqBodyAccJerkMean.Y      : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 $ FreqBodyAccJerkMean.Z      : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 $ FreqBodyAccJerkStd.X       : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 $ FreqBodyAccJerkStd.Y       : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 $ FreqBodyAccJerkStd.Z       : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 $ FreqBodyAccJerkMeanFreq.X  : num  0.132 0.257 0.314 -0.209 -0.253 ...
 $ FreqBodyAccJerkMeanFreq.Y  : num  0.0245 0.0475 0.0392 -0.3862 -0.3376 ...
 $ FreqBodyAccJerkMeanFreq.Z  : num  0.02439 0.09239 0.13858 -0.18553 0.00937 ...
 $ FreqBodyGyroMean.X         : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 $ FreqBodyGyroMean.Y         : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 $ FreqBodyGyroMean.Z         : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 $ FreqBodyGyroStd.X          : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 $ FreqBodyGyroStd.Y          : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 $ FreqBodyGyroStd.Z          : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 $ FreqBodyGyroMeanFreq.X     : num  -0.00355 0.18915 -0.12029 0.01478 -0.10045 ...
 $ FreqBodyGyroMeanFreq.Y     : num  -0.0915 0.0631 -0.0447 -0.0658 0.0826 ...
 $ FreqBodyGyroMeanFreq.Z     : num  0.010458 -0.029784 0.100608 0.000773 -0.075676 ...
 $ FreqBodyAccMagMean         : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ FreqBodyAccMagStd          : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ FreqBodyAccMagMeanFreq     : num  0.0864 0.2367 0.2846 0.1906 0.1192 ...
 $ FreqBodyAccJerkMagMean     : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ FreqBodyAccJerkMagStd      : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ FreqBodyAccJerkMagMeanFreq : num  0.2664 0.3519 0.4222 0.0938 0.0765 ...
 $ FreqBodyGyroMagMean        : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ FreqBodyGyroMagStd         : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ FreqBodyGyroMagMeanFreq    : num  -0.139775 -0.000262 -0.028606 0.268844 0.349614 ...
 $ FreqBodyGyroJerkMagMean    : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ FreqBodyGyroJerkMagStd     : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
 $ FreqBodyGyroJerkMagMeanFreq: num  0.176 0.185 0.334 0.191 0.19 ...
 - attr(*, "vars")= chr "Subject"
 - attr(*, "drop")= logi TRUE
```


## Loading result data file 

  Execute:
```r
dfr <- read.table("tidy_data_summary_180x81.txt", sep=';', dec = ".", header=TRUE)

```

  