FROM httpd:2.4
# COPY ./public-html/ /usr/local/apache2/htdocs/

RUN apt update
RUN apt-get -y install wget

# Download the Dispatcher
RUN wget https://www.adobeaemcloud.com/content/companies/public/adobe/dispatcher/dispatcher/_jcr_content/top/download_8/file.res/dispatcher-apache2.4-linux-x86-64-4.2.3.tar.gz
RUN mkdir -p dispatcher
RUN tar -C dispatcher -zxvf dispatcher-apache2.4-linux-x86-64-4.2.3.tar.gz
RUN ls ./dispatcher

# Copy Dispatcher
RUN cp "./dispatcher/dispatcher-apache2.4-4.2.3.so" "/usr/local/apache2/modules/dispatcher-apache2.4-4.2.3.so"
RUN ln -s /usr/local/apache2/modules/dispatcher-apache2.4-4.2.3.so /usr/local/apache2/modules/mod_dispatcher.so
RUN cp -r ./dispatcher/conf  /usr/local/apache2
#RUN mv ./conf/httpd.conf ./conf/httpd.conf.orig
#RUN mv ./conf/httpd.conf.disp2 ./conf/httpd.conf

#remove temp files 
RUN rm -rf ./dispatcher
RUN rm dispatcher-apache2.4-linux-x86-64-4.2.3.tar.gz
RUN apt -y remove wget

#CMD ["-D", "FOREGROUND"]
#ENTRYPOINT ["/usr/sbin/httpd"]

EXPOSE 80 443
