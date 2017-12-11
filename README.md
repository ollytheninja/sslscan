# SSLScan tests SSL/TLS enabled services to discover supported cipher suites
[sslscan](https://github.com/rbsec/sslscan) (fork) in a Docker container.

Based on [Alpine Linux](https://alpinelinux.org/), so the image is quite small.

SSLScan queries SSL services, such as HTTPS, in order to determine the ciphers that are supported. SSLScan is designed to be easy, lean and fast. The output includes preferred ciphers of the SSL service, the certificate and is in Text and XML formats.


Run the Docker container using the command shown below.

```bash
$ docker run --rm marcomsousa/sslscan www.google.com
```
