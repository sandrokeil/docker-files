CPUS:=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS += --jobs=$(CPUS)

LIST:=  $(wildcard m4/*.m4)
dir:=./

dockerfiles:
	for i in $(LIST); do \
		m4 -I $(dir)/inc $(dir)"$$i" | awk 'NF' > `echo $${i##*/} | sed "s/.m4//"` ; \
	done

docker-build-base:
	docker build --squash -q -t sandrokeil/archlinux:latest -f arch-linux . ;\
	docker build --squash -q -t sandrokeil/archlinux-nvidia:latest -f arch-linux-nvidia . ;\

docker-push-base:
	docker push sandrokeil/archlinux:latest ;\
	docker push sandrokeil/archlinux-nvidia:latest ;\

docker-build:
	for i in $(filter-out %nvidia.m4,$(LIST)); do \
		docker build --squash -q -t sandrokeil/archlinux:`echo $${i##*/} | sed "s/.m4//"` -f `echo $${i##*/} | sed "s/.m4//"` . ;\
		echo "finished: $${i##*/}" ;\
	done
	for i in $(filter %-nvidia.m4,$(LIST)); do \
		docker build --squash -q -t sandrokeil/archlinux-nvidia:`echo $${i##*/} | sed "s/.m4//" | sed "s/-nvidia//"` -f `echo $${i##*/} | sed "s/.m4//"` . ;\
		echo "finished: $${i##*/}" ;\
	done

command-list:
	> commands.txt
	for i in $(filter-out %nvidia.m4,$(LIST)); do \
		echo "docker build --squash -q -t sandrokeil/archlinux:`echo $${i##*/} | sed 's/.m4//'` -f `echo $${i##*/} | sed 's/.m4//'` ." >> commands.txt ;\
	done
	for i in $(filter %-nvidia.m4,$(LIST)); do \
		echo "docker build --squash -q -t sandrokeil/archlinux-nvidia:`echo $${i##*/} | sed 's/.m4//' | sed 's/-nvidia//'` -f `echo $${i##*/} | sed 's/.m4//'` ."  >> commands.txt ;\
	done

push-list:
	echo "#!/usr/bin/env bash" > push.sh
	chmod +x push.sh
	for i in $(filter-out %nvidia.m4,$(LIST)); do \
		echo "docker push sandrokeil/archlinux:`echo $${i##*/} | sed 's/.m4//'` -f `echo $${i##*/} | sed 's/.m4//'` ." >> push.sh ;\
	done
	for i in $(filter %-nvidia.m4,$(LIST)); do \
		echo "docker push sandrokeil/archlinux-nvidia:`echo $${i##*/} | sed 's/.m4//' | sed 's/-nvidia//'` -f `echo $${i##*/} | sed 's/.m4//'` ."  >> push.sh ;\
	done

parallel-build:
	parallel --jobs 24 < commands.txt

docker-build-one:
	docker build   -t sandrokeil/archlinux:`echo $${image##*/} | sed "s/.m4//"` -f `echo $${image##*/} | sed "s/.m4//"` .

docker-build-one-nvidia:
	docker build --squash -t sandrokeil/archlinux-nvidia:`echo $${image##*/} | sed "s/.m4//" | sed "s/-nvidia//"` -f `echo $${image##*/} | sed "s/.m4//"` .

docker-push:
	for i in $(filter-out %nvidia.m4,$(LIST)); do \
		docker push sandrokeil/archlinux:`echo $${i##*/} | sed "s/.m4//"` ;\
	done
	for i in $(filter %-nvidia.m4,$(LIST)); do \
		docker push sandrokeil/archlinux-nvidia:`echo $${i##*/} | sed "s/.m4//" | sed "s/-nvidia//"` ;\
	done

docker-pull-latest:
	docker pull sandrokeil/archlinux:latest
	docker pull sandrokeil/archlinux-nvidia:latest
