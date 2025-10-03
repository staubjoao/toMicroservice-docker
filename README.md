# toMicroservice - Abordagem (semi)automatizada para decomposição de sistemas monolíticos

Ferramenta para análise e transformação de aplicações monolíticas em microsserviços.

## 📋 Pré-requisitos

- Docker

## 🚀 Configuração do ambiente

### 1. Clone o repositório
```bash
git clone https://github.com/staubjoao/toMicroservice-docker.git
cd toMicroservice-docker
```

### 2. Download dos Dados de Análise
Para utilizar a ferramenta, é necessário baixar os dados de análise dos seguintes repositórios de código aberto:

📦 Repositórios disponíveis para teste:
- [7ep demo](https://github.com/7ep/demo)
- [jpetstore-6](https://github.com/mybatis/jpetstore-6)
- [spring-petclinic](https://github.com/spring-projects/spring-petclinic)
- [PartsUnlimitedMRP](https://github.com/microsoft/PartsUnlimitedMRP)

📋 Dowload da entrada da toMicroservice, baixe um desses `.zip` e descompacte na pasta tomcs
- [7ep demo](https://drive.google.com/file/d/1ZhmcI6lU-1b3FLZIizp01wkS6kJQuNNv/view?usp=sharing)
- [jpetstore-6](https://drive.google.com/file/d/1JSKcSGR6ji1blMctRN7GuBlcvn1DTRIC/view?usp=sharing)
- [spring-petclinic](https://drive.google.com/file/d/1kwVQbI4uApp9-ta7GGEOsMUNQ_XgPdsg/view?usp=sharing)
- [PartsUnlimitedMRP](https://drive.google.com/file/d/1JSKcSGR6ji1blMctRN7GuBlcvn1DTRIC/view?usp=sharing)

### 3. Arquivos Necessários na Pasta `tomsc`:
`accept.list` - Lista de classes aceitas

`dependency.xml` - Dependências do projeto (gerado automaticamente)

`entry-file.log` - Log de entrada

`generalFunctionabilities.list` - Funcionalidades gerais

`reject.list` - Lista de classes rejeitadas

### 4. Execução

Acesse a pasta src

```bash
cd src
```

Suba o docker

```bash
docker-compose up --build
```

### 5. Utilize a ferramenta
A ferramenta fica no endereço `http://localhost:5173/`
