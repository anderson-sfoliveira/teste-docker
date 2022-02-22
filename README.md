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
  - [Rodando o projeto](#user-content--rodando-o-projeto)
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

#### 🎲 Rodando o projeto

```bash

# Clone este repositório
$ git clone https://github.com/anderson-sfoliveira/teste-docker.git

# Importe o projeto para dentro do STS4.

# Solicite um "Update Maven Project" (Alt + F5)

# Inicie a aplicação para gerar o jar.

# Pare a execução do projeto.

# Acesse a pasta do projeto no seu terminal/cmd
$ cd teste-docker

# Execute o comando para construir a imagem Docker do projeto
$ docker build -t teste-docker .

# Execute o comando para rodar o container da imagem
$ docker run -p 8080:8080 --name container-teste teste-docker

# O container iniciará na porta:8080 - acesse http://localhost:8080/ping

```

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
