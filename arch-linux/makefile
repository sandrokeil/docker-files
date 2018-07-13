LIST:=  $(wildcard m4/*.m4)
dir:=./

all:
	for i in $(LIST); do \
		m4 -I $(dir)/inc $(dir)"$$i" | awk 'NF' > `echo $${i##*/} | sed "s/.m4//"` ; \
	done
