<h1 align="center">
  Teste Docker
</h1>

<h4 align="center">
	🚧 Concluído 🚧
</h4>

# Índice

<!--ts-->

- [Sobre o projeto](#-sobre-o-projeto)
- [Como executar o projeto](#-como-executar-o-projeto)
  - [Pré-requisitos](#pré-requisitos)
  - [Importando o projeto](#-importando-o-projeto)
  - [Gerando a imagem Docker](#-gerando-a-imagem-docker)
  - [Executando o container da imagem Docker](#-executando-o-container-da-imagem-docker)
  - [Configurando um hot reload](#-configurando-um-hot-reload)
- [Tecnologias](#-tecnologias)
- [Autor](#-autor)
<!--te-->

## 💻 Sobre o projeto

Projeto desenvolvido para estudar sobre Docker. Neste projeto a imagem Docker irá executar o arquivo jar do projeto.

---

## 🚀 Como executar o projeto

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina a ferramenta:
[Maven](https://maven.apache.org/) e [Docker](https://www.docker.com/).
Além disto é bom ter um editor para trabalhar com o código como [Spring Tools 4 for Eclipse](https://spring.io/tools/).

#### 🎲 Importando o projeto

```bash

# Clone este repositório
$ git clone https://github.com/anderson-sfoliveira/teste-docker.git

# Importe o projeto para dentro do STS4.

# Solicite um "Update Maven Project" (Alt + F5)

# Execute o "Maven Build" para gerar o arquivo jar do projeto.

```

<a>
  <img src="https://i.ibb.co/VY2jkpJ/gerando-jar.png" alt="gerando-jar" border="0">
</a>

#### 🔨 Gerando a imagem Docker

```bash

# Acesse a pasta do projeto no seu terminal/cmd
$ cd teste-docker

# Execute o comando para construir a imagem Docker do projeto
$ docker build -t teste-docker .

```

#### 🏃 Executando o container da imagem Docker

```bash

# Execute o comando para rodar o container da imagem
$ docker run -p 8080:8080 --name container-teste teste-docker

# O container iniciará na porta:8080 - acesse http://localhost:8080/ping

```

#### 🏃 Configurando um hot reload

##### Instruções

*  O pom.xml foi configurado para ter o devtools no momento de build da aplicação também:

```
	<build>
		<plugins>
			<plugin>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-maven-plugin</artifactId>
				<configuration>
					<excludeDevtools>false</excludeDevtools>
				</configuration>
			</plugin>
		</plugins>
	</build>
```

*  Essa configuração foi colocada no arquivo de propriedades application.properties:

```
spring.devtools.remote.secret=123 //esse número é uma senha qualquer
```

* Em ```Run Configurations -> Java Application -> New Configuration``` faça:

  * Em Project coloque o nome do seu projeto
  * Em Main Class coloque: ```org.springframework.boot.devtools.RemoteSpringApplication```
  * Na aba arguments coloque ```http://localhost:8080```
  * Dê um nome para a configuração (sugestão: Remote)
  * Na aba Common adicione essa configuração para ela aparecer no seu menu
  * Após esses passos ele vai tentar executar sua aplicação no endereço passado, com aquela porta ativa que no caso será configurada com o docker

* Vá em ```Run Configurations -> Java Application -> [nome-da-configuração]``` e clique em run

* Tente modificar algo na sua aplicação que ative o hot reload e veja no navegador ou console o resultado

##### Notas

* O seu jar é jogado dentro do LXC (Linux Containers) do docker do java mas em nenhum momento recupero essa jar novamente, em outras palavras se eu fechar o container e abrir de novo ele será exatamente igual a como eu gerei o jar pela primeira vez.

* Para contornar isso pare os containers e faça novamente os passos abaixo:
  * [Gere seu jar](#-importando-o-projeto)
  * [Gere a imagem Docker](#-gerando-a-imagem-docker)
  * [Execute o container da imagem Docker](#-executando-o-container-da-imagem-docker)

---

## 🛠 Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

- **[Maven](https://maven.apache.org/)**
- **[Spring Boot](https://spring.io/projects/spring-boot/)**
- **[Docker](https://www.docker.com/)**

> Veja o arquivo [pom.xml](https://github.com/anderson-sfoliveira/teste-docker/blob/main/pom.xml)

---

## 👨🏽‍💻 Autor

<a href="https://www.linkedin.com/in/anderson-sfoliveira/">
 <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/2175235?s=400&u=432d3456eb62f2df111abdccd667976321f6f74a&v=4" width="100px;" alt=""/>
 <br />
 <sub><b>Anderson Oliveira</b></sub></a> <a href="https://www.linkedin.com/in/anderson-sfoliveira/" title="Anderson Oliveira"></a>
 <br />

[![Linkedin Badge](https://img.shields.io/badge/-Anderson-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/anderson-sfoliveira/)](https://www.linkedin.com/in/anderson-sfoliveira/)
[![Gmail Badge](https://img.shields.io/badge/-anderson.sfoliveira@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:anderson.sfoliveira@gmail.com)](mailto:anderson.sfoliveira@gmail.com)

Feito com ❤️ por Anderson Oliveira 👋🏽 Entre em contato!

---
