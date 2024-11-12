# README

# Desenvolvimento de API utilizando Ruby On Rails

- Criação do projeto
  
   Para a criação do projeto é necessário ter intalado na máquina:

     - Ruby (Linguagem de Programação)
     - OnRails (framework)
     - NodeJS
     - Yarn
 
  Para iniciar o desenvolvimento da API é necessário utilizar o comando:

     ```
     bash
     rails new nomeDoProjeto --api --databse==postgresql
     ```
    o comando "--api" faz com que o projeto criado seja para uma API, sendo configurado de forma otimizada e omitindo recursos como views do lado do servidor,
    o comando "--database==postgresql" faz com que as configurações de banco de dados do sistema sejam criadas para o banco de dados especificado, caso não seja setado essas configurações o banco de dados padrão do projeto sera o Sqlite3

  apos navegar até a pasta do projeto criada é necessário utilizar o comando:

    ```
    bash
    bundle install
    ```
    Esse comando busca a Gemfile para instalar as Gems do projeto, sendo o mesmo principio que dependencias em outros frameworks

  Após esses comandos concluidos o projeto esta pronto para ser utilizado

  Dentro do arquivo do projeto execute o comando:

    ```
    bash
    rails server
    ```
    Esse comando inicia o servidor e se não ocorrer nenhum erro tudo está funcionando corretamente!

- Estrutura de pastas do projeto

  O projeto fica dividido da sequinte maneira:

  ```
  app/
  ```
  
       
