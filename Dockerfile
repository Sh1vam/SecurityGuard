FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
#ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y

RUN apt-get install -y\
    pv \
    jq \
    gcc \
    g++ \
    git \
    libsqlite3-dev \
    postgresql \
    postgresql-client \
    postgresql-server-dev-all \
    wget \
    python3 \
    python3-dev \
    python3-pip \
    sqlite3 \
    


#RUN pip3 install --upgrade pip setuptools 
RUN wget https://raw.githubusercontent.com/TeamInnexia/PmSecurity/master/sh1vamrun.py
RUN wget https://raw.githubusercontent.com/TeamInnexia/PmSecurity/master/lol.txt
#RUN mkdir /root/userbot/bin/
#WORKDIR /root/userbot/
#RUN chmod +x /usr/local/bin/*
RUN pip install -r lol.txt
#CMD ["python3","-m ","userbot"]
CMD ["python3","sh1vamrun.py"]
