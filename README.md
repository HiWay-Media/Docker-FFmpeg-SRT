# Docker-FFmpeg-SRT

Docker-FFmpeg-SRT is a Docker base image that includes FFmpeg 5.1.2 and SRT (Secure Reliable Transport) by Haivision. FFmpeg is a powerful multimedia framework that can encode, decode, transcode, mux, demux, stream, filter, and play almost any type of media content. SRT is an open-source video streaming protocol that ensures secure and reliable transmission over unpredictable networks.

## Features:

FFmpeg 5.1.2: Provides a robust set of tools for manipulating multimedia files, including encoding, decoding, transcoding, and streaming.
SRT by Haivision: Adds support for the Secure Reliable Transport (SRT) protocol, enhancing the security and reliability of video streaming.

## Usage:

1. Pull the Docker image from the repository: docker pull ghcr.io/hiway-media/docker-ffmpeg-srt:latest
2. Run a container based on the pulled image: docker run ghcr.io/hiway-media/docker-ffmpeg-srt:latest
3. Utilize FFmpeg and SRT within the container for your multimedia processing and streaming needs.

## Example: 
```bash
docker pull ghcr.io/hiway-media/docker-ffmpeg-srt:latest
docker run -it ghcr.io/hiway-media/docker-ffmpeg-srt:latest ffmpeg -version
```

## Compatibility:
This Docker image is compatible with Docker Engine versions. It is designed to be versatile and compatible with various Docker environments.

## Contributing:
Contributions to this project are welcome! If you have improvements, bug fixes, or new features to suggest, please fork this repository, make your changes, and submit a pull request.

## Issues:
If you encounter any issues or have suggestions for improvement, please open an issue on the GitHub repository. Provide detailed information about the problem or enhancement you are proposing to help us address it effectively.


### Contributors

<a href="https://github.com/HiWay-Media/Docker-FFmpeg-SRT/graphs/contributors"> <img src="https://contrib.rocks/image?repo=HiWay-Media/Docker-FFmpeg-SRT" /> </a>
