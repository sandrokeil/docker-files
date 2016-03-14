# docker-gource

[Docker](https://www.docker.com) container that has the capability to generate [Gource](https://code.google.com/p/gource) 
videos in a headless environment.

* Create a video from your GIT projects
* Add avatars for user
* Add audio (mp3) to the video

## Options
The default options of the following environment variables are

* RES=1920x1080
* DEPTH=24
* FRAMES=60
* SEC_PER_DAY=:-0.3
* HIDE=filenames
* COMPRESSION=18
* GOURCE_ARGS=

Please refer the Gource documentation for the list of full options. The `GOURCE_ARGS` variable can be used to add
additional options like the title or a logo.

## Running
Mount the appropriate folders and configure the environment variables:

```bash
docker run -it --rm --name gource \
  -v REPOS:/repos \
  -v RESULTS_FOLDER:/results \
  -v AVATARS_FOLDER:/avatars \
  -v MP3_FOLDER:/mp3s \
  --env GOURCE_ARGS="title='My awesome project' --logo=/repos/logo.png" \
  sandrokeil/gource
```

If you want repository usernames to be replaced with images then put images to avatars folder.
Name for the avatar image must match the username (e.g taivokasper.png). The video and the video with audio is stored
in the mounted results folder.

The mounted `REPOS` folder must contain a folder with the project name and the project folder must be a GIT repository.
This has the advantage that you can create a video from multiple projects.

```
repos
| --- project1
| --- project2
| --- project3
| --- project4
```
