# cmus-playlist-manager
Scripts that _create_ playlist files,  
and _import_ them into [`cmus`][cmus].

## Playlist files
Playlist files are generated from the `bin/gen-playlists` script.  
The files simply contain the relative path to audio files on each line.  
This format can be imported into `cmus`.

## Scripts
### `gen-playlists`
```
$ bin/gen-playlists --help
```
```
bin/gen-playlists

SYNOPSIS
    bin/gen-playlists [-d N] SRC_DIR DEST_DIR
    bin/gen-playlists --help|-h

DESCRIPTION
    Generates a playlist text file for each directory
    inside the given SRC_DIR.
    The playlist file is simply a text file with each line
    being the full path to an audio file inside the directory (recursively).
    Looks for audio files with the extensions:
        .mp3 .wav .ogg
    Generated playlist files have the extension: .pl

ARGUMENTS
    SRC_DIR
        Path to the directory containing directories
        with audio files for which to create playlists.

    DEST_DIR
        Path to the directory where the generated playlist
        files should be placed in.

OPTIONS
    --help, -h
        Print this help text and exit.

    --depth, -d DEPTH
        DEFAULT: 1
        How deeply to create playlists inside each directory.
        For example, let's say we have a TobyFox/ directory,
        inside the SRC_DIR; the script would create
        a playlist with all audio files found in the
        directory (recursively). But let's say we also
        have a TobyFox/Undertale/ directory;
        with -d 2 a separate TobyFox/Undertale
        playlist will be created, otherwise no playlist
        will be created for the nested directory.
        Note, that a depth of 0 will only create a playlist for SRC_DIR.
```

[cmus]: https://github.com/cmus/cmus
