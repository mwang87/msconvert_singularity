build:
	sudo singularity build msconvert_singularity.simg msconvert_singularity.def
bash:
	singularity shell msconvert_singularity.simg
status:
	singularity exec msconvert_singularity.simg cat /etc/os-release
