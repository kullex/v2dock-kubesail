FROM v2ray/official

ENV FRONTEND_UUID=487a616a-b0a6-4541-936c-f51467d9f610
ENV BACKEND_UUID=d1c32779-24c3-41ab-b77b-f7508d5d8f6d
ENV V2RAY_PORT=9199
ENV V2RAY_PATH=ray

COPY config.json /etc/v2ray/config.json
RUN sed -i -e "s#frontend_uuid#$FRONTEND_UUID#g" \
    -e "s#backend_uuid#$BACKEND_UUID#g" \
    -e "s#v2ray_port#$V2RAY_PORT#g" \
    -e "s#v2ray_path#$V2RAY_PATH#g" \
    /etc/v2ray/config.json

# RUN cat /etc/v2ray/config.json

EXPOSE 8188 ${V2RAY_PORT}
