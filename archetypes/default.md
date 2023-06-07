# Ninjas #OpenToWork

Idioma: [[EN _(soon)_](.)] [[PT-BR](/README.md)]

Ninjas 🥷💻 Prontos para lutar novamente!

## Seniority

██░░░░ - _júnior_

████░░ - _pleno_

██████ - _sênior_

<hr />

{{ if $.Site.Data.software_engineers }}
## Índice de Engenheiros de Software Ninjas <a id="se_index"></a>

Nome | Senioridade | Habilidades | De volta à luta?
-- | :--: | -- | :--:
{{ range $.Site.Data.software_engineers }}[{{ .name }}](#{{ lower .github }}) | {{ if eq .seniority.level "junior" }}██░░░░{{ else if eq .seniority.level "intermediate" }}████░░{{ else if eq .seniority.level "senior" }}██████{{ end }} | {{ with .skill_badges }}<img src="https://skillicons.dev/icons?perline=9&theme=dark&i={{ . }}" />{{end}} | {{ if .hired }}✅✅✅{{ else }}⌛{{ end }}
{{ end }}{{ end }}

{{ if $.Site.Data.project_managers }}
## Índice de Gerentes de Projeto Ninjas <a id="pm_index"></a>

Nome | Habilidades | De volta à luta?
--- | --- | :--:
{{ range $.Site.Data.project_managers }}[{{ .name }}](#{{ lower .linkedin }}) | {{ .skills }} | {{ if .hired }}✅✅✅{{ else }}⌛{{ end }}
{{ end }}{{ end }}

{{ if $.Site.Data.product_designers }}
## Índice de Designers de Produto Ninjas <a id="pd_index"></a>

Nome | Habilidades | De volta à luta?
--- | --- | :--:
{{ range $.Site.Data.product_designers }}[{{ .name }}](#{{ .name | anchorize }}) | {{ .skills }} | {{ if .hired }}✅✅✅{{ else }}⌛{{ end }}
{{ end }}{{ end }}
<hr />

{{ if $.Site.Data.software_engineers }}

## Engenheiros de Software Ninjas

{{ range $.Site.Data.software_engineers }}
### 🥷 {{ .name }} <a id="{{ lower .github }}"></a> [☝️](#se_index)

{{ partial "se_skills_partial.html" . }}
{{ with .subtitle }}📜: {{ . }}
{{ end }}
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
### 🥷 {{ .name }} <a id="{{ lower .linkedin }}"></a> [☝️](#pm_index)

{{ with .skills }}🛡️🗡️: {{ title . }}
{{end}}
{{ with .subtitle }}📜: {{ . }}
{{ end }}
[![linkedin](https://img.shields.io/badge/LinkedIn-0A66C2.svg?style=for-the-badge&logo=LinkedIn&logoColor=white)](https://www.linkedin.com/in/{{ .linkedin }}/)
{{ range .testmonials }}
<img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" /> _{{ .text }}_\
**- [{{ .author.name }}]({{ .author.link }}), {{ .author.relation }}**
{{ end }}
<hr />
{{ end }}{{ end }}{{ if $.Site.Data.product_designers }}

## Designers de Produto Ninjas

{{ range $.Site.Data.product_designers }}
### 🥷 {{ .name }} <a id="{{ .name | anchorize }}"></a> [☝️](#pd_index)

{{ with .skills }}🛡️🗡️: {{ title . }}
{{end}}
{{ with .subtitle }}📜: {{ . }}
{{ end }}
{{ with .linkedin }}[![linkedin](https://img.shields.io/badge/LinkedIn-0A66C2.svg?style=for-the-badge&logo=LinkedIn&logoColor=white)](https://www.linkedin.com/in/{{ . }}/){{ end }}
{{ range .testmonials }}
<img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" /> _{{ .text }}_\
**- [{{ .author.name }}]({{ .author.link }}), {{ .author.relation }}**
{{ end }}
<hr />

{{ end }}{{ end }}

## Insígnias de habilidades

- <https://github.com/tandpfun/skill-icons>
- <https://home.aveek.io/GitHub-Profile-Badges>

## Disclaimers

- Traduções de depoimentos podem ser feitas sem a revisão dos autores. Parte do significado pode ser perdido na tradução. Textos originais serão marcados com a insígnia <img width="20em" height="20em" src="https://upload.wikimedia.org/wikipedia/commons/0/00/Icon-badge.svg" />.
