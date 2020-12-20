FROM alpine:20201218

RUN apk add usbip-utils
RUN apk add strace
ADD fs /
ADD rcS /etc/init.d/
ADD inittab /etc/inittab
CMD ["/bin/sh", "-c", "find / -xdev | cpio -H newc -o"]

#RUN find / -xdev | cpio -H newc -o | gzip > /initrd.gz
#CMD ["tar", "cpf", "-", "/initrd.gz"]
