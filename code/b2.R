q = lm(dee_clean$C2H5OH. ~ 
        +dee_clean$ab
        +dee_clean$wt
        +dee_clean$ml
        +dee_clean$Temp
        +I(dee_clean$Temp^2)
        +I(dee_clean$ml/dee_clean$wt)
        +I(dee_clean$ml/dee_clean$a)
        +I(dee_clean$ml/dee_clean$a/dee_clean$wt)
       +dee_clean$a 
       +dee_clean$b 
)
summary(q)

q = lm(dee_clean$C4. ~ 
         +dee_clean$ab
       +I(dee_clean$ab^2)
       +dee_clean$wt
       +dee_clean$ml
       +I(dee_clean$ml^2)
       +dee_clean$Temp
       +I(dee_clean$Temp^2)
       +I(dee_clean$Temp^3)
       +I(dee_clean$ml/dee_clean$wt)
       +I(dee_clean$ml/dee_clean$a)
       +I(dee_clean$ml/dee_clean$a/dee_clean$wt)
       +dee_clean$a 
       +I(dee_clean$a^2)
)
summary(q)

