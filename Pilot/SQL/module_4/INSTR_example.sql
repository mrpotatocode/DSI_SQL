

--SELECT INSTR('The Instructor is named Thomas','Th'), length('The Instructor is named Thomas')


SELECT 
INSTR('FirstWord, SecondWord, ThirdWord',',')  -- end of first delimt
,INSTR('FirstWord, SecondWord, ThirdWord',',') + 1 -- start of second delim
,INSTR((SUBSTR('FirstWord, SecondWord, ThirdWord', INSTR('FirstWord, SecondWord, ThirdWord',',')+1)),',') + INSTR('FirstWord, SecondWord, ThirdWord',',')+1 -- start of third delim

,SUBSTR('FirstWord, SecondWord, ThirdWord',0, INSTR('FirstWord, SecondWord, ThirdWord',',')) as FirstDelim
,SUBSTR('FirstWord, SecondWord, ThirdWord', INSTR('FirstWord, SecondWord, ThirdWord',',')+1, INSTR('FirstWord, SecondWord, ThirdWord',',')+1) as SecondDelim
,SUBSTR('FirstWord, SecondWord, ThirdWord',INSTR((SUBSTR('FirstWord, SecondWord, ThirdWord', INSTR('FirstWord, SecondWord, ThirdWord',',')+1)),',') + INSTR('FirstWord, SecondWord, ThirdWord',',')+1) AS ThirdDelim
