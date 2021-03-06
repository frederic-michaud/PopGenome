D_jacknife <- function(Dvalues, D.base, block.size=FALSE){

D_sites 	<- Dvalues[1,]
ABBA_sites 	<- Dvalues[2,]
BABA_sites	<- Dvalues[3,]

n.sites         <- length(D_sites)
width           <- block.size
jump 		<- 1


if(n.sites<block.size){
return(list(z=NaN, pval=NaN))
}


repeatlength <- ceiling( (n.sites-width+1)/jump )
  
D_sim 	     <- rep(NaN,repeatlength)      

for(zz in 1:repeatlength){
 
        
        start      <- ((zz-1) * jump + 1)
        end 	   <- ((zz-1) * jump + width) 
        window	   <- start:end 

	ABBA       <- ABBA_sites[window]
	BABA	   <- BABA_sites[window]
	D_sim[zz]  <- ( sum(ABBA, na.rm=TRUE) - sum(BABA, na.rm=TRUE) ) / ( sum(ABBA, na.rm=TRUE) + sum(BABA, na.rm=TRUE) )

}

z    <- abs(D.base/sd(D_sim,na.rm=TRUE))
pval <- 2 * (1 - pnorm(z)) #after Eaton and Ree 2013 


return(list(z=z, pval=pval))

}
