# Gerenciador de Tarefas em Ruby on Rails

Este projeto é uma recriação do Gerenciador de Tarefas originalmente desenvolvido em Ruby, agora utilizando Ruby on Rails.

## Descrição

O Gerenciador de Tarefas é uma aplicação web desenvolvida em Ruby on Rails que permite aos usuários gerenciar suas tarefas diárias de forma eficiente. Os usuários podem criar, editar, completar e excluir tarefas diretamente através da interface web.

## Funcionalidades

- **Cadastro de Tarefas:** Crie novas tarefas especificando título, descrição, prazo e status.
- **Edição e Exclusão:** Edite os detalhes das tarefas existentes ou exclua tarefas que não sejam mais necessárias.
- **Marcar como Completo:** Indique quando uma tarefa foi concluída.


## Como Usar

### Instalação:

1. Clone este repositório: `git clone https://github.com/alefytaas/GerenciadorRails.git`
2. Acesse o diretório do projeto: `cd GerenciadorRails`
3. Instale as dependências: `bundle install`

### Configuração do Banco de Dados:

1. Configure o arquivo `config/database.yml` com as configurações do seu banco de dados.
2. Crie o banco de dados: `rails db:create`
3. Execute as migrações: `rails db:migrate`

### Executando a Aplicação:

1. Inicie o servidor Rails: `rails server`
2. Abra seu navegador e acesse: `http://localhost:3000`

## Tecnologias Utilizadas

- **Ruby on Rails:** Framework web utilizado para o desenvolvimento backend e frontend.
- **HTML/CSS:** Para a estrutura e o estilo da interface do usuário.
- **SQLite (ou outro banco de dados):** Armazenamento de dados da aplicação.

## Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir um problema ou enviar uma solicitação pull com melhorias.

## Licença

Este projeto está licenciado sob a Licença MIT - consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
