rem rmdir output /s /q
mkdir output

xcopy "Chapter 1" "output" /e /y

cd output 

"C:\Program Files (x86)\Pandoc\pandoc" --reference-docx=..\reference.docx -o HoloLensProgrammingBook.docx Chapter1.md 

move HoloLensProgrammingBook.docx ..\HoloLensProgrammingBook.docx

cd ..\

powershell .\convert.ps1
 
rmdir /S /Q output

move /Y "HoloLensProgrammingBook.docx" "C:\Users\kaoru\Dropbox\__送付物\HoloLensProgrammingBook"
move /Y "HoloLensProgrammingBook.pdf" "C:\Users\kaoru\Dropbox\__送付物\HoloLensProgrammingBook"

pause
