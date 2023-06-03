# Ninjas #OpenToWork

Idioma: [[EN](./README.us-en.md)] [[PT-BR](/README.md)]

Devs ninjas 🥷💻 Prontos para lutar novamente!

## Seniority

- ██░░░░ **júnior**
- ████░░ **pleno**
- ██████ **sênior**

## Índice de Engenheiros de Software

<!--
Você pode usar nas habilidades:

mobile:
androidstudio
firebase
flutter
java
kotlin
swift
webflow
webpack

web:
angular
aws
bash
bootstrap
c
cmake
coffeescript
cpp
cs
css
deno
django
docker
dotnet
electron
elixir
flask
go
graphql
jquery
js
lua
md
mongodb
mysql
nestjs
nginx
nodejs
php
postgres
prometheus
python
rabbitmq
rails
react
redis
ruby
rust
scala
spring
sqlite
symfony
typescript
vue
wordpress

-->

Nome | Senioridade | Habilidades | De volta à luta?
-- | :--: | -- | :--:
{{ range $.Site.Data.software_engineers }}[{{ .name }}](#{{ .github }}) | {{ if eq .seniority "junior" }}██░░░░{{ else if eq .seniority "intermediate" }}████░░{{ else if eq .seniority "senior" }}██████{{ end }} | <img src="https://skillicons.dev/icons?theme=dark&i={{ .skills }}" /> | ⌛
{{ end }}
## Índice de Gerentes de Projeto

nome | skills | back to the fight?
--- | --- | ---
[Camila Ribeiro](#camila-ribeiro) | ??? | ⌛

---

## Engenheiros de Software
{{ range $.Site.Data.software_engineers }}
### 🥷 {{ .name }} <a id="{{ .github }}"></a>

{{ .seniority }}: {{ .skills }}

[![github](https://img.shields.io/badge/GitHub-181717.svg?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/{{ .github }})
[![linkedin](https://img.shields.io/badge/LinkedIn-0A66C2.svg?style=for-the-badge&logo=LinkedIn&logoColor=white)](https://www.linkedin.com/in/{{ .linkedin }}/)
{{ range .testmonials }}
_{{ .text }}_ <img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" />\
**- [{{ .author.name }}]({{ .author.link }}), {{ .author.relation }}**
{{ end }}
![Most Used Languages](https://github-readme-stats.vercel.app/api/top-langs/?hide_border=true&theme=github_dark&username={{ .github }})

![GitHub stats](https://github-readme-stats.vercel.app/api?hide_border=true&theme=github_dark&include_all_commits=true&count_private=true&show_icons=true&username={{ .github }})

---
{{ end }}

## Insígnias de habilidades

- <https://github.com/tandpfun/skill-icons>
- <https://home.aveek.io/GitHub-Profile-Badges>

## Disclaimers

- Traduções de depoimentos podem ser feitas sem a revisão dos autores. Parte do significado pode ser perdido na tradução. Textos originais serão marcados com a insígnia <img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" />.
