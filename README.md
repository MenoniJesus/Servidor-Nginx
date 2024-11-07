<h1>Servidor-Nginx</h1> 

<h2>Tecnologias usadas:</h2>

- Linux 
- Ubuntu
- Shell 

<h2>Instalação do WSL (Windows Subsystem for Linux)</h2>

1. Abra o Terminal do Windows (PowerShell ou Command Prompt).
2. Digite o comando para instalar o WSL:
   
        wsl --install
- Por padrão, será instalada a distro <b>Ubuntu</b>

3. Caso deseje escolher outra distribuição, liste as disponíveis com:
  
        wsl --list --online
  
4. Instale a distro que deseja com:
  
        wsl --install -d <NomeDaDistro>
  
5. Após a instalação, configure o usuário e senha.

<h2>Instalação do Nginx</h2>
1 - No terminal da sua distribuição WSL, execute o comando:

    sudo apt install nginx


2 - Verifique se a instalação foi bem-sucedida:

    nginx -v
- O comando irá mostrar a versão instalada do Nginx.

<h2>Gerenciando o Nginx</h2>
É recomendado executar as próximas etapas como <b>root</b>. Para isso:

    sudo su
- Para <b>iniciar</b> o Nginx:

      service nginx start
- Para <b>parar</b> o Nginx:

      service nginx stop
- Para verificar o <b>status</b>:

      service nginx status

Abra o navegador e digite `localhost` para verificar se o Nginx está funcionando corretamente.

<h2>Configuração do Script</h2>
1 - O script necessário para a tarefa estará disponível neste repositório.

2 - Crie um diretório para armazenar o script (por exemplo, `/usr/scripts`):

    mkdir /usr/scripts
3 - Crie um arquivo para conter o código (por exemplo, `script.sh`).

    touch script.sh

4 - Coloque o código do script no arquivo escolhido.

5 - Crie um diretório para armazenar os logs do Nginx (por exemplo, `/var/log/logNginx`):

    mkdir /var/log/logNginx
<h2>Tornando o Script Executável</h2>
1 - Dê permissão de execução ao script:

    chmod +x /usr/scripts/script.sh

2 - Verifique se o caminho do script está correto e atualizado conforme o seu ambiente.

<h2>Configuração do Cron para Execução Automática</h2>
1 - Abra o arquivo de configuração do <b>cron</b>:

    crontab -e 

2 - Se for a primeira vez abrindo o arquivo, escolha o editor de texto.

3 - Adicione a seguinte linha no arquivo para executar o script a cada 5 minutos:

    */5 * * * * bash /usr/scripts/script.sh

<h2>Verificação Final</h2>

- Aguarde 5 minutos e verifique se os logs foram gerados:

      ls /var/log/logNginx
- Para ler os logs

      cat /var/log/logNginx/online.log
  ou

      cat /var/log/logNginx/offline.log
