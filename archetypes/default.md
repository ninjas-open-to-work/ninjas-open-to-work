# Ninjas #OpenToWork

Idioma: [[EN](./README.us-en.md)] [[PT-BR](/README.md)]

Devs ninjas 🥷💻 Prontos para lutar novamente!

## Seniority

██░░░░ - _júnior_

████░░ - _pleno_

██████ - _sênior_

## Índice de Engenheiros de Software Ninjas

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
{{ range $.Site.Data.software_engineers }}[{{ .name }}](#{{ .github }}) | {{ if eq .seniority "junior" }}██░░░░{{ else if eq .seniority "intermediate" }}████░░{{ else if eq .seniority "senior" }}██████{{ end }} | <img height="22" src="https://skillicons.dev/icons?theme=dark&i={{ .skill_badges }}" /> | ⌛
{{ end }}

## Índice de Gerentes de Projeto Ninjas

nome | skills | back to the fight?
--- | --- | :--:
{{ range $.Site.Data.project_managers }}[{{ .name }}](#{{ .linkedin }}) | {{ .skills }} | ⌛
{{ end }}

<hr />
{{ if $.Site.Data.software_engineers }}

## Engenheiros de Software Ninjas

{{ range $.Site.Data.software_engineers }}
### 🥷 {{ .name }} <a id="{{ .github }}"></a>

{{ .seniority }}: {{ title .skills }}

[![github](https://img.shields.io/badge/GitHub-181717.svg?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/{{ .github }})
[![linkedin](https://img.shields.io/badge/LinkedIn-0A66C2.svg?style=for-the-badge&logo=LinkedIn&logoColor=white)](https://www.linkedin.com/in/{{ .linkedin }}/)
{{ range .testmonials }}
<img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" /> _{{ .text }}_\
**- [{{ .author.name }}]({{ .author.link }}), {{ .author.relation }}**
{{ end }}
![Most Used Languages](https://github-readme-stats-bernardolm.vercel.app/api/top-langs/?hide_border=true&theme=github_dark&username={{ .github }})

![GitHub stats](https://github-readme-stats-bernardolm.vercel.app/api?hide_border=true&theme=github_dark&include_all_commits=true&count_private=true&show_icons=true&username={{ .github }})
<hr />
{{ end }}{{ end }}{{ if $.Site.Data.project_managers }}
## Gerentes de Projeto Ninjas
{{ range $.Site.Data.project_managers }}
### 🥷 {{ .name }} <a id="{{ .linkedin }}"></a>

{{ title .skills }}

[![linkedin](https://img.shields.io/badge/LinkedIn-0A66C2.svg?style=for-the-badge&logo=LinkedIn&logoColor=white)](https://www.linkedin.com/in/{{ .linkedin }}/)
{{ range .testmonials }}
<img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" /> _{{ .text }}_\
**- [{{ .author.name }}]({{ .author.link }}), {{ .author.relation }}**
{{ end }}<hr />{{ end }}{{ end }}

## Insígnias de habilidades

- <https://github.com/tandpfun/skill-icons>
- <https://home.aveek.io/GitHub-Profile-Badges>

## Disclaimers

- Traduções de depoimentos podem ser feitas sem a revisão dos autores. Parte do significado pode ser perdido na tradução. Textos originais serão marcados com a insígnia <img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" />.

<style>
h2   {padding: 50px 0 50px 0;}
hr   {padding: 50px 0 50px 0;}
</style>
