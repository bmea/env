default:

install:
# try local install; or
# try user install
	@{ \
		install -vt /usr/local/bin -m0755 env.sh; \
		install -vd /etc/env.d; \
	} || { \
		install -vt ${HOME}/bin -m0755 env.sh; \
	}; \
	install -vd ${HOME}/env.d;
