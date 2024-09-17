dee_clean["C2H5OH-C4"]=dee_clean$C2H5OH.*dee_clean$C4.
d = NULL
d = data.frame(dee_clean$`C2H5OH-C4`)
d["C2H5OH-C4"] = d$dee_clean..C2H5OH.C4.

d["wt"] = dee_clean$wt
d["ml"] = dee_clean$ml
d["Temp"] = dee_clean$Temp
d["a"] = dee_clean$a
d["ab"] = dee_clean$ab
attach(d)
q = lm(`C2H5OH-C4` ~ 
         ###+d$ab
         ###+I(d$ab^2)
         +wt
       +ml
       ###+I(d$ml^2)
       +Temp
       +I(Temp^2)
       +I(Temp^3)
       +I(ml/wt)
       +I(ml/a)
       +I(ml/a/wt)
       +a 
       ###+I(d$a^2)
       #+d$b
       
       +I(wt^2)
       +I(wt*ml)
       #+I(d$ab^3)
       #+I(d$ab*d$wt)
       #+I(d$ab*d$ml)
       ###+I(d$ab*d$Temp)
       ###+I(d$ab*d$Temp^2)
       ###+I(d$ab*d$Temp^3)
       #+I(d$ab*d$ml*d$wt^-1)
       #+I(d$a^2*d$ab)
       #+I(d$ab^2*d$wt)
       +I(wt*Temp)
       +I(wt*Temp^2)
       +I(wt*Temp^3)
       +I(Temp^4)
       +I(Temp^5)
       #+I(d$ml*d$ab*d$a^-1)
       #+I(d$ab^2*d$ml)
       #+I(d$ml^2)
       #+I(d$ml^2*d$wt^-1)
       +I(a^2*ml)
       ###+I(d$ab^2*d$Temp)
       +I(ml*Temp)
       +I(ml*Temp*wt^-1)
       +I(a^2*Temp)
       +I(ab^2*Temp^2)
       +I(wt*Temp^2)
       +I(ml*Temp^2)
       +I(ml*Temp^2*wt^-1)
       +I(a^2*Temp^2)
       #+I(d$ab*d$ml*d$a^-1*d$wt^-1)
       #+I(d$ab^2*d$ml*d$a^-1*d$wt^-1)
       #+I(d$ml*d$a^-1)
       ###+I(d$ml^2*d$a^-1*d$wt^-1)
       #+I(d$ml^2*d$a^-1*d$wt^-2)
       #+I(d$a*d$ml*d$wt^-1)
       #+I(d$a*d$ab^2)
       #+I(d$a*d$wt)
       #+I(d$a*d$ml)
       #+I(d$ml*d$a*d$wt^-1)
       +I(a^3)
       #+I(d$ml*d$wt^-1)
       
       
)
detach()
summary(q)

point = data.frame(0)
point["wt"] = 1
point["ml"] = 1
point["a"] = 200
point["Temp"] = 550
point["ab"] = 1
point["C2H5OH-C4"] = 0

predict(q,newdata = point,interval = "none")

