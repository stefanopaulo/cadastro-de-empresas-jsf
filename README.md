# Cadastro de Empresas - JSF e PrimeFaces

Este projeto é uma aplicação simples desenvolvida como portfólio, que simula o cadastro de empresas utilizando JSF e PrimeFaces. A aplicação permite a visualização, cadastro, edição e exclusão de empresas, com persistência de dados em um banco de dados relacional.

## Tecnologias Utilizadas

- **Java**: Linguagem principal para o desenvolvimento do backend.
- **JSF (JavaServer Faces)**: Framework MVC utilizado para a construção da interface web.
- **PrimeFaces**: Biblioteca de componentes visuais que facilita a criação de interfaces ricas e dinâmicas.
- **JPA (Java Persistence API)**: Utilizado para mapeamento objeto-relacional e persistência de dados.
- **Hibernate**: Implementação da JPA.
- **MySQL**: Banco de dados relacional para armazenamento de informações.
- **Maven**: Gerenciador de dependências e build.
- **Docker**: Containerização do banco de dados para facilitar o desenvolvimento e o deploy.

## Funcionalidades

- Listar todas as empresas cadastradas.
- Cadastrar uma nova empresa.
- Editar informações de uma empresa.
- Excluir uma empresa.
- Validação de formulários com mensagens de erro apropriadas.

### Páginas

- **GestaoEmpresas.xhtml**: Página inicial com a listagem das empresas cadastradas.

## Como Executar o Projeto

### Pré-requisitos

- **JDK 8+**: O projeto foi desenvolvido usando Java 8, certifique-se de ter o JDK instalado.
- **Maven**: Para gerenciar as dependências do projeto.
- **Docker**: Para subir o banco de dados MySQL em um container.

### Passos

1. Clone o repositório para o seu ambiente local:
   ```bash
   git clone https://github.com/seuusuario/cadastro-empresas-jsf.git
   
2. Suba o container do MySQL utilizando Docker:
   ```bash
   docker-compose up -d

3. Configure as credenciais do banco de dados no arquivo persistence.xml.
4. Compile e execute o projeto utilizando Maven:
   ```bash
   mvn clean install
   mvn jetty:run

5. Acesse a aplicação no navegador:
   http://localhost:8080/cadastro-de-empresas

## Contribuições
Este projeto é de uso pessoal para portfólio, mas contribuições e sugestões são bem-vindas. Fique à vontade para abrir uma issue ou enviar um pull request.

## Licença
Este projeto está licenciado sob a [MIT License](./LICENSE).
