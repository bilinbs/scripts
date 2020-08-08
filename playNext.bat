@@echo off
if exist playlist.txt (
  rem for /f "tokens=*" %%a in (playlist.txt) do (
  rem      mpv "%%a" --save-position-on-quit --fullscreen
  rem      more +1 <playlist.txt >temp
  rem      del playlist.txt
  rem      rename temp playlist.txt
        rem goto :eof

  rem  )
  mpv --playlist=playlist.txt  --save-position-on-quit --fullscreen
) else (
 rem for /f "tokens=*" %%s in ('dir /b *.mkv ^| sort') DO @echo %%s >> playlist.txt
 dir /b /s *.mkv | sort > playlist.txt
)
:eof