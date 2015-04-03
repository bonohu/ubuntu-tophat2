# ubuntu-tophat2
Dockerfile for tophat v2.0.14 with bowtie 2.2.5.
Loading docker image by executing command like

```docker run -it -v `pwd`:/data bonohu/ubuntu-tophat2```

After ```cd /data```, execute command like

```tophat -o out -p 2 -r 100 1_1.fastq 1_2.fastq```
