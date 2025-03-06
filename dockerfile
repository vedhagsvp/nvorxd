FROM ubuntu:latest

RUN apt-get update && apt-get install -y ocl-icd-opencl-dev && apt-get install -y git wget

WORKDIR /app

RUN wget https://github.com/xintai6660707/ore-mine-pool/raw/refs/heads/main/ore-mine-pool-linux-avx512 && chmod +x ore-mine-pool-linux-avx512

COPY cpu.sh /app/cpu.sh
RUN chmod +x /app/cpu.sh

CMD ["/app/cpu.sh"]
