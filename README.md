# Tads6Robert

Este projeto foi desenvolvido em sala de aula para demostrar o uso e aplicação de gems, para que funcionalidades sejam encapsuladas para possiveis utilizações em novas aplicações.

# Instalação

Adicione esta linha ao Gemfile do seu aplicativo:

ruby
gem 'tads6_robert'


E então execute:

    $ bundle install

Ou instale você mesmo como:

    $ gem install tads6_robert

# Como Utilizar

Siga os seguintes passos para utilizar a gem.

# Require necessário
require 'tads6robert'

# Sua classe deve herdar a classe Tads6Robert::ORM
class ExemploClasse < Tads6Robert::ORM
  # Toda classe deve conter um :ID obrigatoriamente
  attr_accessor :id, :modelo

  # O construtor deve seguir o exemplo abaixo
  def initialize(hash)
    @titulo = hash.first[:modelo]
  end

  # Este método deve ser reescrito obrigatoriamente com o caminho para seu banco de dados 'db/nomedaclasseminúsculo'
  def self.path
    'local/onde/deseja/salvar/os/dados'
  end

#Passo a Passo

  Crie o diretório com o caminho especificado no método self.path
  Criar um novo registro:

  ExemploClasse.criar(
    modelo: 'corsa mil'
  )

#Listar todos os registros:

  puts ExemploClasse.listar

  Selecionar um registro específico

  puts ExemploClasse.selecionar(1)

#Atualizar um registro específico

  carro = ExemploClasse.selecionar(1)
  carro.modelo = "modelo novo"
  ExemploClasse.atualizar(carro)

# Remover um registro específico

  ExemploClasse.remove(1)

# Importante

      O atributo id deve estar contido, contudo ele não deve ser inicializado.
      O método path obrigatoriamente deve ser reescrito para o local onde você deseja salvar os dados

    def self.path
      'local/onde/deseja/salvar/os/dados'
    end

# Licença

  A gem está disponível como código aberto sob os termos do MIT License.
  Código de Conduta

  Espera-se que todos que interagem nas bases de código do projeto Tads6Robert.
