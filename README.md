# MKV Audio Track Changer Script

This Bash script allows you to change the audio track of MKV files in a specified directory using `mkvmerge`. You can provide the target directory and the desired audio track number as command-line arguments.

## Usage

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/your-username/mkv-audio-track-changer.git
    cd mkv-audio-track-changer
    ```

2. **Run the Script:**
    ```bash
    ./mkv_audio_track_changer.sh /path/to/your/directory 1
    ```
   Replace `/path/to/your/directory` with the path to the directory containing your MKV files, and `1` with the desired audio track number.

3. **Output:**
   The script will create new MKV files with the updated audio track and append "_new" to the original filenames.

## Requirements

- [mkvmerge](https://mkvtoolnix.download/)

## License

This script is licensed under the [MIT License](LICENSE).

