# SISPIC - GERENCIAMENTO DE BOLSAS

:mag: Uma maneira eficiente de gestação para a UENF :school_satchel: :mortar_board:

O sistema tem o intuito de automatizar toda a gestão das bolsas na Universidade. Existem quatro tipos de usuários: Professores, Coordenadores, Alunos e a Administradora.

O SISPICT The system requires:

- Ruby version >= 2.2
- Rails 5.0.1
- Postgresql version > 9

Front-end

- Materialize

Metricas

- gem 'rails_best_practices'
- gem 'rubocop', require: false
- gem 'rubycritic', require: false

### Como desenvolver?

1 - Você deve desenvolver com testes, pois o sistema está utilizando entrega contínua e deploy continuo
2 - Crie uma branch com o nome da feature que você irá desenvolver, ex: crud-usuarios
```
 git checkout -b crud-usuarios
```
3 - Desenvolva com testes e a cada teste criado você pode rodar o rspec removendo o container do docker.
```
 docker-compose run --rm web rspec
```
ou caso queira uma pasta específica
```
 docker-compose run --rm web rspec spec/controllers/predios_controller_spec.rb
```
4 - Após os testes passarem você pode rodar o rubocop, verificar se está seguindo o style do desenvolvimento ruby
```
 docker-compose run --rm web rubocop
```
5 - Utilizaremos os chamados PR = pull request no github, mas no gitlab é chamado de MR = marge request
Caso queira mais informação, segue o link [SITE](https://gitlab.com/marceloakira/ad/wikis/como-submeter-uma-merge-request)
O gitlab vai verificar se os testes estão corretos e caso esteja ficará verde e poderemos ir na opção Merge Request e unir
as branchs, passando da branch de feature para a desenvolvimento.
É necessário que seja enviado pequenos códigos diariamente para que não de problema no desenvolvimento.

6 - Instalei um sistema de task que quando zerarmos os banco de dados em desenvolvimento podemos recriar com algumas informações por exemplo
os tipos de usuário.

 ***Aluno***
 
 email: rodolfog.peixoto@gmail.com
 senha: 123456789

 ***Acessor***
 email: acessor@gmail.com
 senha:123456789


***professor***
email: professor@gmail.com
senha: 123456789

***coordenador***
email: coordenador@gmail.com
senha: 123456789

***visitante***
email: visitante@gmail.com
senha: 123456789