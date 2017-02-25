rem rmdir output /s /q



mkdir output




xcopy "Chapter 1" "output" /e /y




cd output 


"C:\Program Files (x86)\Pandoc\pandoc" --reference-docx=..\reference.docx -o HoloLensProgrammingBook.docx Chapter1.md 




move HoloLensProgrammingBook.docx ..\HoloLensProgrammingBook.docx




cd ..\


powershell .\convert.ps1




rmdir /S /Q output




move /Y "HoloLensProgrammingBook.pdf" %HOMEPATH%\Dropbox\Books\HoloLensProgrammingBook


move /Y "HoloLensProgrammingBook.docx" %HOMEPATH%\Dropbox\Books\HoloLensProgrammingBook


pause
