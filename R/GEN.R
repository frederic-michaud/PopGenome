setClass("region.stats", representation(

######## Pops for each Test Module

Pop_Neutrality  =  "list",
Pop_FSTN        =  "list",
Pop_FSTH        =  "list",
Pop_Linkage     =  "list",
Pop_MK          =  "list",


genename               = "list",
nucleotide.diversity   = "list",
haplotype.diversity    = "list",
haplotype.counts       = "list" ,      # sfreqh
minor.allele.freqs     = "list",       # JFD
biallelic.structure    = "list",       # SXX
linkage.disequilibrium = "list",       # Link
site.FST               = "list",
missing.freqs          = "list",
nuc.diversity.between  = "list",
D		       = "list" #Patterson's D
))


#"THETA","S (THETA)","T (THETA)","SA (THETA)","TA (THETA)","FL (THETA)","L (THETA)","FW (THETA)"
#"FREQUENCY (THETA) VALUES","Watterson Frequency","Tajima Frequency","Achaz, Watterson Frequency","Achaz, Tajima Frequency","Fu & Li  
# Frequency","Zeng Frequency","Fay & Wu Frequency",


#### SHOW ######
setMethod("show", "region.stats",
 function(object){
cat("-----\n")
 cat("SLOTS:\n")
 cat("-----\n")
 out <- data.frame(Slots=c("nucleotide.diversity","haplotype.diversity","haplotype.counts", "minor.allele.freqs","linkage.disequilibrium","biallelic.structure","site.FST","missing.freqs","nuc.diversity.between","D"),         
               

                Description=c(
               " Nucleotide diversity","Haplotype diversity","Haplotype distribution","Minor allele frequencies","Linkage disequilibrium","Shared and fixed polymorphisms","SNP-wise FST","Missing nucleotides","dxy","Patterson's D"),

               Module=c("FST","FST","FST","Detail","Linkage","Detail","Detail","count.unknowns","diversity.stats.between","introgression.stats"))
 
              


 print(out)
 cat("\n---------------\n")
 cat("These are the Slots (class region.data) \n") 
})




