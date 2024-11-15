# Desenvolvimento de API utilizando Ruby On Rails


- Criação do projeto
  
   Para a criação do projeto é necessário ter instalado na máquina:

     - Ruby (Linguagem de Programação)
     - OnRails (framework)
     - NodeJS
     - Yarn
 
  Para iniciar o desenvolvimento da API é necessário utilizar o comando:

     ```
     bash
     rails new "nomeDoProjeto" --api --databse==postgresql
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
  
    - `app/`: Contém a lógica principal da aplicação dividida em subpastas para controladores, modelos, visualizações e outros componentes.
      
    - `config/`: Armazena as configurações da aplicação, incluindo rotas, ambientes e inicializadores.
      
    - `db/`: Inclui arquivos relacionados ao banco de dados.
      
    - `lib/`: Contém códigos personalizados e módulos auxiliares.
      
    - `public/`: Arquivos estáticos que podem ser acessados diretamente pelo servidor.
      
    - `test/`: usado para testes da aplicação.
      
    - `Gemfile`: Define as dependencias de gemas do projeto.


 - Criação de classes
   Para a criação das classes utilizaremos o `scaffold` para a criação das classes de uma maneira mais rápida, o comando utilizado será:

   ```
   bash
   rails generate scaffold NomeDaEntidade campo1:tipo campo2:tipo campo3:tipo
   ```
   Esse comando ira criar a estrutura de classes completa da entidade criada, incluindo Models, Controllers e Rotas, além de criar as Views, se for um pojeto completo, como definimos que iriamos criar uma api o mesmo não    ira criar as classes de views.


- Models
  No pacote de Models da aplicação o Scaffold cria uma classe com o nome da entidade definida no comando da seguinte maneira:
  ```ruby
  class User < ApplicationRecord
  end
  ```
  Essa classe `User` herda da classe `AplicationRecord` que serve como classe base para todos os modelos da aplicação, ela herda de `ActiveRecord::Base`, que é a classe principal da ORM(Object-Relati
onal Mapping) do Rails.
```ruby
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
```

- Controllers
  No pacote de Controllers da aplicação o Scaffold irá criar as classes de controllers com os metodos padrões de para ralização de requisições HTTP da seguinte forma:

  ```ruby
  class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:nome, :cpf, :telefone, :cidade, :cep)
    end
  ```
  Da mesma forma a classe Controller irá herdar de `AplicationController`que é uma classe que herda de `ActionController::API` uma classe base para todos os controladores do Rails, que está configurada para ser uma API.

- Banco de dados
  Dentro da pasta `config/` podemos encontrar uma  



   
