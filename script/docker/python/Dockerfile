FROM python:3.7.9-slim-buster
VOLUME /tmp
ENV LANG zh_CN.utf8
ENV TZ Asia/Shanghai
COPY ./files/efficientnet-b2-8bb594d6.pth /root/.cache/torch/hub/checkpoints/efficientnet-b2-8bb594d6.pth
COPY ./files/backend /backend
WORKDIR /backend
RUN true \
	&& pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /backend/requirements.txt \
	&& rm -rf /root/.cache/pip
CMD ["python", "main.py", "--host", "0.0.0.0", "--port", "48519"]