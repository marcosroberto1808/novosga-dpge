# # Dockerfile by Marcos Roberto
# # Variaveis de ambiente iniciais
# FROM centos:centos7
# LABEL author="marcos.roberto@defensoria.ce.def.br"
# ENV TZ=America/Fortaleza
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# # Dependencias básicas do S.O
# RUN yum -y update ; \ 
# yum clean all ; \ 
# yum -y install epel-release yum-utils  ; \ 
# yum -y install httpd

# # Dependencias RVM e RUBY
# # RUN /bin/bash -l -c "curl -fSL https://getcomposer.org/composer.phar -o composer.phar" ; \ 
# # /bin/bash -l -c "php composer.phar create-project "novosga/novosga:^2.0" ~/novosga "

# #### INICIO CONFIGURAÇÃO DA APLICAÇÃO ####

# COPY ./files/novosga.conf /etc/httpd/sites-available/novosga.conf

# # Executar 
# WORKDIR /var/www/html
# ADD ./scripts/run.sh /run.sh
# RUN chmod -v +x /run.sh
# ## Iniciar Tudo
# CMD ["/run.sh"]

FROM httpd:2.4.33-alpine
RUN apk update; \
    apk upgrade;
# Copy apache vhost file to proxy php requests to php-fpm container
COPY ./files/demo.apache.conf /usr/local/apache2/conf/demo.apache.conf
RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf