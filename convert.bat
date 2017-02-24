rem rmdir output /s /q
mkdir output

xcopy "Chapter 1" "output" /e /y
xcopy "Chapter 2" "output" /e /y
xcopy "Chapter 3" "output" /e /y
xcopy "Chapter 4" "output" /e /y
xcopy "Chapter 5" "output" /e /y
xcopy "Chapter 6" "output" /e /y

cd output 
pandoc --reference-docx=..\reference.docx -o HoloLensProgrammingBook.docx Chapter1.md 

move TeamDevBook.docx ..\TeamDevBook.docx

cd ..\

powershell .\convert.ps1
 
rmdir /S /Q output

pause
