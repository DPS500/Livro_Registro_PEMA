######------------- Dados fictícios ------------######
#Data: 26/10/23



#################### DADOS PESSOAIS ###################


# -------------------- CPFs ------------------------------
# Funcao gerador de CPF
func <- function(){
  sample(1:9,11, replace = T) |>
    paste(collapse = "")
}
func()

# Replicador da funcao de CPF
cpf<-sapply(1:100,function(x) func())

# lapply(1:10,function(x) func()) # Lista


#--------------------- Nomes -------------------------
# Vetores com nomes e sobrenomes fictícios

nomes <- c("João", "Maria", "Pedro", "Ana", "Luiz", "Clara", "Carlos", "Isabela", "Gustavo", "Mariana")

# Definir a semente (seed) para que os resultados sejam replicáveis
set.seed(123)

# Gerar 100 nomes aleatórios
nomes_aleatorios <- paste(sample(nomes, 100, replace = TRUE))

# Exibir os nomes gerados
print(nomes_aleatorios)

# Endereços de e-mail
emails <- paste(nomes_aleatorios,c("@gmail.com","@outlook.com","@outlook.com"), sep = "")
emails

#SEXO (0 = 'masculino', 1 = 'Feminino')
generos <- sample(c(0, 1),
                  length(nomes),
                  replace = TRUE)


sexo <- as.factor(generos)

levels(sexo) <- c("Masculino", "Feminino")







#Perfil de satisfação (5 = excelente, 4 = ótimo, 3 = bom, 2 = razoável, 1 = ruim)
perfil_satisfacao <- sample(c(5, 4, 3, 2, 1),
                            length(nomes),
                            replace = TRUE)

perfil <- as.factor(perfil_satisfacao)

levels(perfil) <- c("ruim", "razoável", "bom", "ótimo", "excelente")


####################### VISITAS AO PARQUE ####################

#Costuma vim apenas no dia do parque = 0 ou em outros dias = 1?
visita_parque <- sample(c(0,1), 100, replace = TRUE)

visita <- as.factor(visita_parque)

levels(visita) <- c("Apenas no dia do Parque", "Outros dias")


#-------------CIRCUITOS REALIZADOS------------------
# L1 = CIRCUITO COMPLETO, L2 = CIRCUITO PARCIAL, L3 = CIRCUITO ESPECÍFICO  I,
# L4 = CIRCUITO ESPECÍFICO  II


atracoes <- sample(c(1L, 2L, 3L,4L),
                   length(nomes),
                   replace = TRUE)

circuito <- as.factor(atracoes)
levels(circuito) <- c("CIRCUITO COMPLETO","CIRCUITO PARCIAL",
                      "CIRCUITO ESPECÍFICO  I",
                      "CIRCUITO ESPECÍFICO  II")

#COMO FICOU SABENDO DO PEMA?
# 4 = através do amigos, 3 = Redes sociais, 2 = agentes de viagem, 1 = grupos de pesquisa ou livros
conhece_PEMA <- sample(c(4,3,2,1), 100, replace = TRUE)

conhece <- as.factor(conhece_PEMA)

levels(conhece) <- c("grupos de pesquisa ou livros", "agentes de viagem",
                     "Redes sociais", "através do amigos")

#------------------NOME DOS GUIAS ---------------
guia <- c("Ana", "Carlos", "Mariana", "Paulo", "Luisa", "Pedro", "Isabel",
          "Ricardo", "Julia", "Lucas")


# Definir a semente (seed) para que os resultados sejam replicáveis
set.seed(123)

# Gerar 100 nomes aleatórios
nomes_guia <- paste(sample(guia, 100, replace = TRUE))

# Exibir os nomes gerados
print(nomes_guia)



################# PERFIL DE SATISFAÇÃO #####################

# O QUE VOCÊ ACHOU DA ESTRUTURA DO PARQUE?
# 3 = BOM, 2 = RAZOÁVEL, 1 = RUIM

estrutura_pema <- sample(c(3,2,1), 100, replace = TRUE)

estrutura <- as.factor(estrutura_pema)

levels(estrutura) <- c("ruim", "razoável", "bom")

# O QUE VOCÊ ACHOU DA HIGIENE DO PEMA?
# 3 = BOM, 2 = RAZOÁVEL, 1 = RUIM

higiene_pema <- sample(c(3,2,1), 100, replace = TRUE)

higiene <- as.factor(estrutura_pema)

levels(higiene) <- c("ruim", "razoável", "bom")


# O QUE VOCÊ ACHOU DO ATENDIMENTO NO PEMA?
# 3 = BOM, 2 = RAZOÁVEL, 1 = RUIM

atendi_pema <- sample(c(3,2,1), 100, replace = TRUE)

atendimento <- as.factor(atendi_pema)

levels(atendimento) <- c("ruim", "razoável", "bom")

# MEIOS DE ACESSO AO PEMA
# 3 = TRANSPORTE PŔOPRIO, 2 = ÔNIBUS, 1 = EXCURSÃO

acesso_pema <- sample(c(3,2,1), 100, replace = TRUE)

acesso <- as.factor(acesso_pema)

levels(acesso) <- c("EXCURSÃO", "ÔNIBUS", "TRANSPORTE PŔOPRIO")



#-----------------data frame---------------------------------
dados <- data.frame(nome = nomes,
                    generos,
                    sexo,
                    cpf,
                    emails,
                    atracoes,
                    circuito,
                    perfil_satisfacao,
                    perfil,
                    higiene_pema,
                    higiene,
                    estrutura_pema,
                    estrutura,
                    nomes_guia,
                    conhece_PEMA,
                    atendi_pema,
                    atendimento,
                    acesso_pema,
                    acesso)

dados

#################################################################################



# Carregar a biblioteca ggplot2
library(ggplot2)








