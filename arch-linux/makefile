CPUS:=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS += --jobs=$(CPUS)

LIST:=  $(wildcard m4/*.m4)
dir:=./

dockerfiles:
	for i in $(LIST); do \
		m4 -I $(dir)/inc $(dir)"$$i" | awk 'NF' > `echo $${i##*/} | sed "s/.m4//"` ; \
	done

docker-build:
	docker pull sandrokeil/archlinux
	docker pull sandrokeil/archlinux-nvidia
	for i in $(filter-out %nvidia.m4,$(LIST)); do \
		docker build -q -t sandrokeil/archlinux:`echo $${i##*/} | sed "s/.m4//"` -f `echo $${i##*/} | sed "s/.m4//"` \
	done
	for i in $(filter %-nvidia.m4,$(LIST)); do \
		docker build -q -t sandrokeil/archlinux-nvidia:`echo $${i##*/} | sed "s/.m4//" | sed "s/-nvidia//"` -f `echo $${i##*/} | sed "s/.m4//"` \
	done
docker-push:
	for i in $(filter-out %nvidia.m4,$(LIST)); do \
		docker push sandrokeil/archlinux:`echo $${i##*/} | sed "s/.m4//"` \
	done
	for i in $(filter %-nvidia.m4,$(LIST)); do \
		docker push sandrokeil/archlinux-nvidia:`echo $${i##*/} | sed "s/.m4//" | sed "s/-nvidia//"` \
	done