FROM clojure:lein
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
	&& apt-get install -y nodejs rlwrap \
	&& npm update -g \
	&& rm -rf /var/lib/apt/lists/*
