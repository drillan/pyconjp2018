FROM python:3.6.6-slim-stretch

ADD requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt && \
    jupyter contrib nbextension install --user && \
    jupyter-nbextension install rise --py --sys-prefix && \
    jupyter nbextension install --py hide_code && \
    jupyter nbextension enable --py hide_code && \
    jupyter serverextension enable --py hide_code
