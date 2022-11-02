DECLARE @DayOfTheWeek INT 

DECLARE @Sun bit,  
        @Mon bit, 
        @Tue bit,  
        @Wed bit,  
        @Thu bit, 
        @Fri bit,  
        @Sat bit 

-- turn on indicators 1=on 0=off
SET @Sun = 1 
SET @Mon = 1   
SET @Tue = 0    
SET @Wed = 0    
SET @Thu = 0         
SET @Fri = 0  
SET @Sat = 0       

SET @DayOfTheWeek = POWER(2*@Sun,1)  
                    + POWER(2*@Mon,2) 
                    + POWER(2*@Tue,3) 
                    + POWER(2*@Wed,4)  
                    + POWER(2*@Thu,5)  
                    + POWER(2*@Fri,6)  
                    + POWER(2*@Sat,7) 

IF ( (2 & @DayOfTheWeek) = 2 )     PRINT 'Sunday' 
IF ( (4 & @DayOfTheWeek) = 4 )     PRINT 'Monday' 
IF ( (8 & @DayOfTheWeek) = 8 )     PRINT 'Tuesday' 
IF ( (16 & @DayOfTheWeek) = 16 )   PRINT 'Wednesday' 
IF ( (32 & @DayOfTheWeek) = 32 )   PRINT 'Thursday' 
IF ( (64 & @DayOfTheWeek) = 64 )   PRINT 'Friday' 
IF ( (128 & @DayOfTheWeek) = 128 ) PRINT 'Saturday'

