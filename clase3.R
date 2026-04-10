nombre <- c("Carlos", "María", "Carmen", "Pedro", "Luis", "Sara")
sexo <- c("H", "M", "M", "H", "H", "M")
fisica <- c(6.7, 7.2, 5.5, NA, 3.5, 6.2)
quimica <- c(8.1, 9.5, 5, 4.5, 5, 4)
sexo <- factor(sexo)
levels(sexo)
media <- (fisica + quimica) / 2
aprobado <- media >= 5
nombre[aprobado]
df <- data.frame(nombre, sexo, fisica, quimica)
df$media <- media
df[df$sexo == "M" & df$media >= 5, c("nombre", "media")]
