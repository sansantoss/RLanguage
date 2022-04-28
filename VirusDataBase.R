library("seqinr")
library(bioseq)
# *_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*
# Trabajo elaborado por:
# Arnold Ponce A
# Guillermo Esquivel Ortiz A01625621
#
# Santiago Santos Bante    A01731506
#
# *_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*

# Secuencias de entidades estudiadas :
# zV <- Zika virus, complete genome
# cV <- SARS coronavirus, complete genome
# wV <- Wuhan seafood market pneumonia virus isolate Wuhan-Hu-1, complete genome
# mV <- Middle East respiratory syndrome coronavirus, complete genome
# dV <- Dengue virus 1, complete genome 

# Obtencion de las secuencias

zV <- read.fasta("./Zikavirus.fasta") # Formato seqinr
zVS <- read_fasta("./Zikavirus.fasta") # Formato bioseq

# cV <- read.fasta("")  # Formato seqinr
# cVS <- read_fasta("") # Formato bioseq

# wV <- read.fasta("wuhan.fasta")  # Formato seqinr
# wVS <- read_fasta("wuhan.fasta") # Formato bioseq

# mV <- read.fasta("")  # Formato seqinr
# mVS <- read_fasta("") # Formato bioseq

dV <- read.fasta("./DengueVirus.fasta")  # Formato seqinr
dVS <- read_fasta("./DengueVirus.fasta") # Formato bioseq


# ----------- ¿Cual es el tamaño de cada secuencia? -----------

sprintf("Virus del Zika: %a proteínas", length(zV[[1]]))
#sprintf("Virus : % proteínas", length(zV[[1]]))
sprintf("Virus Wuhan Hu-1: %s proteínas", length(wV[[1]]))
#sprintf("Virus : %s proteínas", length(zV[[1]]))
sprintf("Virus del Dengue: %s proteínas", length(dV[[1]]))


# ----------- ¿Cúal es la composición de nucleótidos de cada secuencia? -----------

count(zV[[1]],1) # Virus del Zika
#count(V[[1]],1) # Virus del
count(wV[[1]],1) # Virus del Wuhan-Hu-1
#count(V[[1]],1) # Virus del 
count(dV[[1]],1) # Virus del Dengue


# ----------- ¿Cuál es el contenido de GC de cada virus? -----------

print(GC(zV[[1]])) # Virus del Zika
# print(GC(V[[1]])) # Virus del
print(GC(wV[[1]])) # Virus del Wuhan-Hu-1
# print(GC(V[[1]])) # Virus del 
print(GC(dV[[1]])) # Virus del Dengue

# Función para obtener la secuencia en complementaria e imprimirla por cada secuencia 

zVSC <- seq_complement(zVS) # Virus del Zika
sprintf("Virus original %s ", zVS)
sprintf("Complementaria %s ", zVSC)

#zVSC <- seq_complement(zVS) # Virus del 
#sprintf("Virus original %s ", zVS)
#sprintf("Complementaria %s ", zVSC)

wVSC <- seq_complement(wVS) # Virus del Wuhan-Hu-1
sprintf("Virus original %s ", wVS)
sprintf("Complementaria %s ", wVSC)

#zVSC <- seq_complement(zVS) # Virus del 
#sprintf("Virus original %s ", zVS)
#sprintf("Complementaria %s ", zVSC)

dVSC <- seq_complement(dVS) # Virus del Dengue
sprintf("Virus original %s ", dVS)
sprintf("Complementaria %s ", dVSC)



