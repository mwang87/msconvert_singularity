build:
	sudo singularity build msconvert_singularity.simg msconvert_singularity.def
bash:
	singularity shell msconvert_singularity.simg
status:
	singularity exec msconvert_singularity.simg cat /etc/os-release
test:
	singularity exec msconvert_singularity.simg wine msconvert ./thermo_file.raw --32 --zlib --ignoreUnknownInstrumentError --filter "peakPicking true 1-"
