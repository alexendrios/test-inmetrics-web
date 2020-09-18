# test-inmetrics-web

** Como Executar o projeto
* Importante ter o ruby instalado versão 2.5 ou superior

### Instalar o bundler
'
gem install bundler
'

### Instalar as Depedências do Ruby (projeto)
'
bundler install
'

### Executar Localmente
'
bundle exec cucumber
'

### Executar no servidor CI (gerando reports JSON)
'
bundle exec cucumber -p ci
'

### Verificanficando os Reports no Allure
* Impotante ter o Allure Framework instalado
'
* Execute dentro da pasta logs: "allure serve allure_report"
'
