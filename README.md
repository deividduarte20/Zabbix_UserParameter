# Zabbix_UserParameter


# Zabbix: Monitorar status disponibilidade de E-mail Locaweb

# DEIVID DUARTE

# Repositório pessoal

Script desenvolvido para monitoramento de versão do firmware mikrotik via shell script.
O script consiste em acessar site via navegador lynx e apresentar na tela podendo ser adaptado para armazenar resultado em arquivo.

# Sumário

    Requisitos
    Downloads
    Configuração
    Importar template
    Conclusão

# Requisitos:

    Instale o pacote

    Debian/Ubuntu

$ sudo apt-get install -y lynx
    
# Downloads:
  
    Baixe os arqivos:
      locaweb_status
      locaweb.conf
      template_locaweb_zabbix4.2.3.xml

# Configuração:

Copie o arquivo de script locaweb_status para /usr/local/bin/
Atribua permissão de execução com o comando: chmod +x locaweb_status
Copie o arquivo de configuração do UserParameter locaweb_status para a pasta /etc/zabbix/zabbix_agentd.d/

Para testar se o script está funcionando basta executar o comando:
  locaweb_status
Se o comando executar e caso o status do serviço esteja disponível o retorno do comando será 1 se estiver indisponível retornará 0.

Verifique a opção Timeout no arquivo /etc/zabbix/zabbix_agentd.conf e mude para Timeout=30.
 
 Acesse o front-end do seu servidor       

Configuration > Templates > Import


![Template](https://github.com/deividduarte20/Zabbix_UserParameter/blob/master/Template.png)


Selecione o arquivo template_locaweb_zabbix4.2.3.xml

No template foi configurado para efetuar a coleta a cada 10 minutos então aguardo o período de 10 minutos para confirmar que a coleta ocorreu com 
sucesso.

![Locaweb](https://github.com/deividduarte20/Zabbix_UserParameter/blob/master/Locaweb.png)

![email](https://github.com/deividduarte20/Zabbix_UserParameter/blob/master/email.png)

