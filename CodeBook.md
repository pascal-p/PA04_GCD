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
  
  - https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and also  
  
  - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
  Once decompressed, explanation about the features and their meaning can be found in the `README.txt`, `features_info.txt` and `features.txt`.  
  For the activity labels, refer to file `activity_labels`.

# Final tidy data set - variables and summary
  This summarizes the variables used in the final tiny data set, called `tidy_data_summary_180x81.txt`.

  The final tidy data set is composed of 81 variables, details below.   
  
  No units per se.

## Variables

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
| TimeBodyAccMean.Y           | time body acceleration mean on Y                          | "    "             |
| TimeBodyAccMean.Z           | time body acceleration mean on Z                          | "    "             |
| TimeBodyAccStd.X            | time body acceleration std dev on X                  | "    "             |
| TimeBodyAccStd.Y            | time body acceleration std dev on Y             | "    "             |
| TimeBodyAccStd.Z            | time body acceleration std dev on Z              | "    "             |
| TimeGravityAccMean.X        | time gravity acceleration mean on X                       | "    "             |
| TimeGravityAccMean.Y        | time gravity acceleration mean on Y                       | "    "             |
| TimeGravityAccMean.Z        | time gravity acceleration mean on Z                       | "    "             |
| TimeGravityAccStd.X         | time gravity acceleration std dev on X                | "    "             |
| TimeGravityAccStd.Y         | time gravity acceleration std dev on Y                 | "    "             |
| TimeGravityAccStd.Z         | time gravity acceleration std dev on Z                 | "    "             |
| TimeBodyAccJerkMean.X       | time body acceleration jerk mean on X                     | "    "             |
| TimeBodyAccJerkMean.Y       | time body acceleration jerk mean on Y                     | "    "             |
| TimeBodyAccJerkMean.Z       | time body acceleration jerk mean on Z                     | "    "             |
| TimeBodyAccJerkStd.X        | time body acceleration jerk std dev on X            | "    "             |
| TimeBodyAccJerkStd.Y        | time body acceleration jerk std dev on Y         | "    "             |
| TimeBodyAccJerkStd.Z        | time body acceleration jerk std dev on Z          | "    "             |
| TimeBodyGyroMean.X          | time body gyroscope mean on X                             | "    "             |
| TimeBodyGyroMean.Y          | time body gyroscope mean on Y                             | "    "             |
| TimeBodyGyroMean.Z          | time body gyroscope mean on Z                             | "    "             |
| TimeBodyGyroStd.X           | time body gyroscope std dev on X                    | "    "             |
| TimeBodyGyroStd.Y           | time body gyroscope std dev on Y                    | "    "             |
| TimeBodyGyroStd.Z           | time body gyroscope std dev on Y                     | "    "             |
| TimeBodyGyroJerkMean.X      | time body gyroscope jerk mean on X                        | "    "             |
| TimeBodyGyroJerkMean.Y      | time body gyroscope jerk mean on Y                        | "    "             |
| TimeBodyGyroJerkMean.Z      | time body gyroscope jerk mean on Z                        | "    "             |
| TimeBodyGyroJerkStd.X       | time body gyroscope jerk std dev on X                   | "    "             |
| TimeBodyGyroJerkStd.Y       | time body gyroscope jerk std dev on Y                   | "    "             |
| TimeBodyGyroJerkStd.Z       | time body gyroscope jerk std dev on Z                   | "    "             |
| TimeBodyAccMagMean          | time body acceleration magnitude mean                     | "    "             |
| TimeBodyAccMagStd           | time body acceleration magnitude std dev             | "    "             |
| TimeGravityAccMagMean       | time gravity acceleration magnitude mean                  | "    "             |
| TimeGravityAccMagStd        | time gravity acceleration magnitude std dev          | "    "             |
| TimeBodyAccJerkMagMean      | time body acceleration jerk magnitude mean                | "    "             |
| TimeBodyAccJerkMagStd       | time body acceleration jerk magnitude std dev             | "    "             |
| TimeBodyGyroMagMean         | time body gyroscope magnitude mean                        | "    "             |
| TimeBodyGyroMagStd          | time body gyroscope magnitude std dev                | "    "             |
| TimeBodyGyroJerkMagMean     | time body gyroscope jerk magnitude mean                   | "    "             |
| TimeBodyGyroJerkMagStd      | time body gyroscope jerk magnitude std dev           | "    "             |
|                             |                                                           |                    |
| FreqBodyAccMean.X           | frequence body acceleration mean on X                     | "    "             |
| FreqBodyAccMean.Y           | frequence body acceleration mean on Y                     | "    "             |
| FreqBodyAccMean.Z           | frequence body acceleration mean on Z                     | "    "             |
| FreqBodyAccStd.X            | frequence body acceleration std dev on X             | "    "             |
| FreqBodyAccStd.Y            | frequence body acceleration std dev on Y             | "    "             |
| FreqBodyAccStd.Z            | frequence body acceleration std dev on Z              | "    "             |
| FreqBodyAccMeanFreq.X       | frequence gravity acceleration mean on X                  | "    "             |
| FreqBodyAccMeanFreq.Y       | frequence gravity acceleration mean  on Y                  | "    "             |
| FreqBodyAccMeanFreq.Z       | frequence gravity acceleration mean  on Z                  | "    "             |
| FreqBodyAccJerkMean.X       | frequence gravity acceleration std dev on X          | "    "             |
| FreqBodyAccJerkMean.Y       | frequence gravity acceleration std dev on Y           | "    "             |
| FreqBodyAccJerkMean.Z       | frequence gravity acceleration std dev on Z           | "    "             |
| FreqBodyAccJerkStd.X        | frequence body acceleration jerk mean on X                | "    "             |
| FreqBodyAccJerkStd.Y        | frequence body acceleration jerk mean on Y                | "    "             |
| FreqBodyAccJerkStd.Z        | frequence body acceleration jerk mean on Z                | "    "             |
| FreqBodyAccJerkMeanFreq.X   | frequence body acceleration jerk mean frequence on X      | "    "             |
| FreqBodyAccJerkMeanFreq.Y   | frequence body acceleration jerk mean frequence on Y                                                          |                    |
| FreqBodyAccJerkMeanFreq.Z   | frequence body acceleration jerk mean frequence on Z                                                          |                    |
| FreqBodyGyroMean.X          | frequence body gyroscope mean on X                        | "    "             |
| FreqBodyGyroMean.Y          | frequence body gyroscope mean on Y                        | "    "             |
| FreqBodyGyroMean.Z          | frequence body gyroscope mean on Y=Z                      | "    "             |
| FreqBodyGyroStd.X           | frequence body gyroscope std dev on X                | "    "             |
| FreqBodyGyroStd.Y           | frequence body gyroscope std dev on Y                | "    "             |
| FreqBodyGyroStd.Z           | frequence body gyroscope std dev on Z                | "    "             |
| FreqBodyGyroMeanFreq.X      | frequence body gyroscope mean frequence on X              | "    "             |
| FreqBodyGyroMeanFreq.Y      | frequence body gyroscope mean frequence on Y              | "    "             |
| FreqBodyGyroMeanFreq.Z      | frequence body gyroscope mean frequence on Z              | "    "             |
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


  
