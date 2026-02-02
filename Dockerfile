FROM kaitai/ksv:latest

RUN mkdir -p /ksy
COPY ksy/ /ksy/
COPY app.sh /app.sh

# Same as official docker:
# https://github.com/kaitai-io/kaitai_struct_visualizer/blob/23ec082a066d1ac593cedb96bbccda7ad999a3ff/Dockerfile#L15C1-L15C15
WORKDIR /share

ENTRYPOINT ["/app.sh"]
