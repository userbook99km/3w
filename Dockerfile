FROM nginx:latest
LABEL ifeng fscarmen mack-a userbook99km
EXPOSE 80
USER root
ENV uuid 109d3712-6d3d-4ae7-be6b-894ba766ad1c
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
